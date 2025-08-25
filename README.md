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

## N8N: Data Warehouse Flow Option 
- Go to CiviCRM api explorer and add required where and select parameters (select can include fields from nested tables like email or gender)
- Create a table in UI database manager (create columns for selected fields, can be named differently)
- Create Flow in N8N with api request, edit fields node, split out node and postgres node

## Kestra: Data Warehouse Flow Option 
- Go to CiviCRM api explorer and add required where and select parameters (select can include fields from nested tables like email or gender)
- copy body string to request in kestra
- use polars to create dataframe and save to data warehouse

Field selection happens with the API, potential joining and processing can be done with polars


## Coolify
- Deploy Metabase, Kestra and database via GUI

## Metabase Deployment
- Metabase Cloud: https://www.metabase.com/pricing/
- Elestio: https://elest.io/open-source/metabase

## Data Warehouse 

- UI management (create tables etc.): Neon, Supabase
- serverless/file-based/in-memory database makes sense because db is not queried often: https://neon.com (can be deployed in the eu/germany)
- Alternatives: 
    - https://www.scaleway.com/en/serverless-sql-database/
    - https://neon.com
    - https://supabase.com/
    - https://elest.io/open-source/postgresql

