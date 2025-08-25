## How to API

- CiviCRM has a built-in API explorer: https://civicrm.correlaid.org/civicrm/api4#/explorer//
- Static ERDs: https://docs.civicrm.org/dev/en/latest/api/ERDs/#contact-info
- Congiguring API keys is weird: https://docs.civicrm.org/sysadmin/en/latest/setup/api-keys/
    - api key extension needs to be installed: https://civicrm.correlaid.org/civicrm/admin/extensions?action=update&id=com.cividesk.apikey&key=com.cividesk.apikey
    - an api key needs to be created for a contact
    - the contact needs to be added to a group (e.g. administrators)
    - Rest authentication needs to be configured: https://civicrm.correlaid.org/civicrm/admin/setting/authx?reset=1 with deleting the Authentication guards (?) and adding api key as methods to the required fields

## How to Search Kit

## How to Datenbank-Anbindung
