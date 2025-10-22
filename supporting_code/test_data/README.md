# Test data generation

Scripts in this folder can be used to generate test data to import into CiviCRM.


## Setup
rename `.env-template` to `.env`. If you want to create more or less data, you can adapt the environment variables.

```
N_CONTACTS=300 # number of contacts to create
N_CONTRIBUTIONS=3502 # number of contributions to create
SEED=4321 # random seed
```

## Generate data 

_all assuming you’re in the folder `test_data`_

using `make`

```
make data
```

or running python scripts manually

```
uv run gen_contacts.py
uv run gen_contributions.py
```

## Update Contacts

1. Run the script `supporting_code/test_data/update_contacts.py`
2. Import the resulting csv in CiviCRM (Kontakte)
    - choose “Aktualisieren”