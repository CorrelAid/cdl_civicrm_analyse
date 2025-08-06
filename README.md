This repo contains IaC code to set up a 

### Setup

1. Install [OpenTofu](https://opentofu.org/docs/intro/install/), [TFlint](https://github.com/terraform-linters/tflint) and [uv](https://docs.astral.sh/uv/getting-started/installation/)

2. Set up pre-commit
    ```
    uv run pre-commit install
    ```

3. Install ansible requirements
    ```
    uv run ansible-galaxy install -r ansible/requirements.yml
    ```

4. Setup [Netbird](https://docs.netbird.io/how-to/installation) and ask an admin to be added to the CorrelAid organisation.

5. Set Environment Variables with copy pasting the script in the bitwarden collection belonging to this project.

### Run OpenTofu

```
tofu apply
```

### Run Ansible

```
uv run ansible-playbook ansible/playbook.yml 
```

## Knowledge

### API
- CiviCRM has a built-in API explorer: https://civicrm.correlaid.org/civicrm/api4#/explorer//
- Static ERDs: https://docs.civicrm.org/dev/en/latest/api/ERDs/#contact-info
- Congiguring API keys is weird: https://docs.civicrm.org/sysadmin/en/latest/setup/api-keys/
    - api key extension needs to be installed: https://civicrm.correlaid.org/civicrm/admin/extensions?action=update&id=com.cividesk.apikey&key=com.cividesk.apikey
    - an api key needs to be created for a contact
    - the contact needs to be added to a group (e.g. administrators)
    - Rest authentication needs to be configured: https://civicrm.correlaid.org/civicrm/admin/setting/authx?reset=1 with deleting the Authentication guards (?) and adding api key as methods to the required fields
### Internationalisation
- Requires installation of https://civicrm.org/extensions/update-language-files
- Afterwards, click on "Update language files" in the localisation menu and select desired language(s)