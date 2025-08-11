variable "infisical_client_secret" {
  type = string
}

variable "project_settings" {
  type = map(any)
  default = {
    name   = "civicrmanalyse"
    region = "fra1"
  }
}

variable "vps" {
  type = map(any)
  default = {
    size              = "s-4vcpu-8gb"
    image             = "ubuntu-24-04-x64"
    user              = "correlaid"
    auto_snapshot_tag = "civicrm_auto_snapshot"
  }

}

variable "dns" {
  type = map(any)
  default = {
    zone             = "correlaid.org"
    subdomain        = "civicrm"
    n8n_subdomain    = "n8n"
    kestra_subdomain = "kestra"
  }
}

variable "public_ssh_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIeERanBBo5ijAyt989TCxZj3AnADzI2uIf3gF+m1W+d correlaid"

}
