This repo contains IaC code to set up a 


## IaC Setup

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

# Test data generation

scripts in subfolder `test_data` can be used to generate test data to import into CiviCRM.

## Setup
rename `test_data/.env-template` to `test_data/.env`. If you want to create more or less data, you can adapt the environment variables.

```
N_CONTACTS=300 # number of contacts to create
N_CONTRIBUTIONS=3502 # number of contributions to create
SEED=4321 # random seed
```

## Generate data 

using `make`

```
cd test_data
make data
```

or running python scripts manually
```
cd test_data
uv run gen_contacts.py
uv run gen_contributions.py
```

### mdBook

- Installation: https://rust-lang.github.io/mdBook/guide/installation.html
    - Brew: https://formulae.brew.sh/formula/mdbook
    - For arch-based: https://archlinux.org/packages/extra/x86_64/mdbook/

- While in doc folder, run `mdbook init`

- To add Mermaid diagram support:

   ```bash
   cargo install mdbook-mermaid
   ```


## Misc Knowledge

### Internationalisation
- Requires installation of https://civicrm.org/extensions/update-language-files
- Afterwards, click on "Update language files" in the localisation menu and select desired language(s)

