# Komponenten
- Komponenten
    - CiviCRM:
        - API
        - CiviCRM-Datenbank
        - SearchKit
        - Extensions: Civisualize, ..
        - API Explorer
    - Externe Tools
        - Tabellenkalkulationsprogramme: Excel, LibreCalc, Google Sheets
        - Skripten in Tabellenkalkulationsprogrammen: Power Query, Google Apps Script 
        - BI Tools: Metabase (Alternative: Superset, Power BI)
        - Workflow-Tools: Kestra, n8n
        - Datenspeicherung: managed database (as a service)

## intern
Hier wird erklärt, was man innerhalb von CiviCRM für Möglichkeiten, hat Daten zu analysieren

Welche internen Analysemöglichkeiten bietet CiviCRM


### Berichte

Beispiel: Ohne Konfiguration möglich: Contributions by Organization, Top Donors

## extern
### Workflow Tools
#### Kestra: Data Warehouse Flow Option 

- Go to CiviCRM api explorer and add required where and select parameters (select can include fields from nested tables like email or gender)
- copy body string to request in kestra
- use polars to create dataframe and save to data warehouse

BeispielFlows
- Im Repo findet ihr in dem Ordner `kestra_flows` Beispiele dafür, wie ihr Daten über die API oder die Datenbank laden könnt.

#### N8N: Data Warehouse Flow Option 
- Go to CiviCRM api explorer and add required where and select parameters (select can include fields from nested tables like email or gender)
- Create a table in UI database manager (create columns for selected fields, can be named differently)
- Create Flow in N8N with api request, edit fields node, split out node and postgres node

### Managed Datenbank

- UI management (create tables etc.): Neon, Supabase
- serverless/file-based/in-memory database makes sense because db is not queried often: https://neon.com (can be deployed in the eu/germany)
- Alternatives: 
    - https://www.scaleway.com/en/serverless-sql-database/
    - https://neon.com
    - https://supabase.com/
    - https://elest.io/open-source/postgresql


## Metabase Deployment
- Metabase Cloud: https://www.metabase.com/pricing/
- Elestio: https://elest.io/open-source/metabase

# Libre Office

wie kann ich meine Daten mit Libre Office analysieren?

# Daten aus CiviCRM laden

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

