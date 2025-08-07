data "infisical_secrets" "main" {
  env_slug     = "prod"
  folder_path  = "/"
  workspace_id = "c6b11c29-4e36-472e-93be-54130b65a987"
}

provider "digitalocean" {
  token             = data.infisical_secrets.main.secrets["DO_TOKEN"].value
  spaces_access_id  = data.infisical_secrets.main.secrets["DO_SPACES_ACCESS_ID"].value
  spaces_secret_key = data.infisical_secrets.main.secrets["DO_SPACES_SECRET_KEY"].value
}

provider "hetznerdns" {
  api_token = data.infisical_secrets.main.secrets["HETZNER_DNS"].value

}

data "digitalocean_project" "main" {
  name = "cdl_civicrm_analyse"
}

resource "digitalocean_droplet" "main" {
  image  = var.vps.image
  name   = var.project_settings.name
  region = var.project_settings.region
  size   = var.vps.size
  tags   = [var.vps.auto_snapshot_tag]
  user_data = templatefile("templates/user_data.tftpl", {
    ssh_key           = var.public_ssh_key,
    user              = var.vps.user,
    setup_key         = data.infisical_secrets.main.secrets["CDL_CIVICRM_ANALYSE_NETBIRD_SETUP"].value,
    hostname          = var.project_settings.name
    do_region         = var.project_settings.region
    do_token          = data.infisical_secrets.main.secrets["DO_TOKEN"].value
    auto_snapshot_tag = var.vps.auto_snapshot_tag
    }
  )
  lifecycle {
    ignore_changes = [
      user_data
    ]
  }
}

data "digitalocean_vpc" "main" {
  name = "default-${var.project_settings.region}"
}

resource "digitalocean_firewall" "main" {
  name = var.project_settings.name

  droplet_ids = [digitalocean_droplet.main.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
  inbound_rule {
    protocol         = "icmp"
    source_addresses = [data.digitalocean_vpc.main.ip_range]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = [data.digitalocean_vpc.main.ip_range]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

resource "digitalocean_spaces_bucket" "backup" {
  name          = "${var.project_settings.name}-db-backups-do-not-delete"
  region        = var.project_settings.region
  force_destroy = false
}

resource "digitalocean_project_resources" "main" {
  project = data.digitalocean_project.main.id
  resources = [
    digitalocean_droplet.main.urn, digitalocean_spaces_bucket.backup.urn
  ]
}

####################

data "hetznerdns_zone" "dns_zone" {
  name = var.dns.zone
}

resource "hetznerdns_record" "main" {
  zone_id = data.hetznerdns_zone.dns_zone.id
  name    = var.dns.subdomain
  value   = digitalocean_droplet.main.ipv4_address
  type    = "A"
}

resource "hetznerdns_record" "n8n" {
  zone_id = data.hetznerdns_zone.dns_zone.id
  name    = var.dns.n8n_subdomain
  value   = digitalocean_droplet.main.ipv4_address
  type    = "A"
  ttl     = 60
}

#####################

# writing data to files for ansible

resource "local_file" "hosts" {
  filename = "../ansible/hosts"
  content = templatefile("templates/hosts.tftpl", {
    user         = var.vps.user
    netbird_fqdn = "${var.project_settings.name}.netbird.cloud"
  })
}

resource "local_file" "group_vars" {
  filename = "../ansible/group_vars/group_vars.yml"
  content = templatefile("templates/group_vars.tftpl",
    {
      subdomain     = var.dns.subdomain
      n8n_subdomain = var.dns.n8n_subdomain
      domain        = var.dns.zone
      do_region     = var.project_settings.region
      s3_endpoint   = digitalocean_spaces_bucket.backup.endpoint
      s3_bucket     = digitalocean_spaces_bucket.backup.name
    }
  )
}
