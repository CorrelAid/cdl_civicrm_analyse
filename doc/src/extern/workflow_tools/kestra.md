## Kestra: Data Warehouse Flow Option 

- Go to CiviCRM api explorer and add required where and select parameters (select can include fields from nested tables like email or gender)
- copy body string to request in kestra
- use polars to create dataframe and save to data warehouse

## Beispiel-Flows

- Im Repo findet ihr in dem Ordner `kestra_flows` Beispiele dafür, wie ihr Daten über die API oder die Datenbank laden könnt.