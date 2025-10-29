# Google Workspace
*Der Text dieser Seite wurde von Mistral erstellt und dann inhaltlich und redaktionell überarbeitet und ergänzt.*


## Google Sheets
[🔢 daten-auswerten](./../1-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../1-datenlebenszyklus.html#daten-visualisieren) [🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)

Google Sheets ist die **kostenlose, webbasierte Tabellenkalkulation** von Google Workspace, die sich besonders für **kollaborative Datenanalyse** eignet. Ihr könnt damit Daten aus CiviCRM oder anderen Quellen analysieren, visualisieren und in Echtzeit gemeinsam bearbeiten.

### Vorteile von Google Sheets
- **Echtzeit-Kollaboration in der Cloud**: Mehrere Nutzer\*innen können gleichzeitig an einer Datei in der Cloud arbeiten.
- **Einfache Integration**: Verbindung mit **Google Drive, Data Studio** und anderen Google-Diensten.
- **Automatisierung**: Mit Google Apps Script (s.u.) könnt ihr Daten aus CiviCRM importieren.

### Nachteile von Google Sheets
- **Performanz bei großen Datensätzen**: Bei **großen Datenmengen** (ab ~100.000 Zeilen) wird Sheets langsam.
- **Weniger leistungsfähig als Excel**: **Komplexe Formeln oder Pivot-Tabellen** sind möglich, aber nicht so mächtig.
- **Datenschutz und Datensouveränität**: Daten werden auf **Google-Servern gespeichert** – für manche Organisationen keine Option.

### Fazit: Google Sheets
Wenn ihr Google Sheets bereits verwendet, ist es eine gute Option, um kollaborativ und cloud-basiert mit euren CiviCRM-Daten zu arbeiten. Sheets eignet sich besonders gut für einfache bis mittelkomplexe Datenauswertungen und Visualisierungen für den internen Gebrauch. 
Aufgrund der Datenschutzproblematik solltet ihr vermeiden, personenbezogene Daten in Google Sheets zu speichern. Eine Option kann sein, Daten in [SearchKit](./civicrm-searchkit-chartkit.md) zu aggregieren. 


## Google Apps Script
[🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)

Google Apps Script ist eine JavaScript-basierte Programmiersprache, mit der ihr u.a. **Abläufe in Google Sheets automatisieren** könnt. Mit AppsScript können wir CiviCRM-Daten mithilfe der CiviCRM-API direkt in Google Sheets laden. 

### Vorteile von Google Apps Script
- **Kostenlos und integriert**: Keine zusätzliche Software nötig – läuft direkt in Google Sheets.
- **Direkter Datenimport aus CiviCRM mithilfe der CiviCRM API**: Ihr könnt Daten automatisch aktualisieren und spart euch den manuellen Schritt des Datenexports aus CiviCRM. Siehe [unser Experiment zu SearchKit + Google Sheets](./../2-ansaetze/1-searchkit-tabellenkalkulation.md. 

### Nachteile von Google Apps Script
- Erfordert **Grundkenntnisse in JavaScript**.
- **Eingeschränkte Performance**: Bei komplexen Skripten oder großen Datenmengen kann es langsam werden.
- **Abhängigkeit von Google**: Skripte laufen nur in der Google Workspace-Umgebung.

### Fazit: Google Apps Script
Mit Google Apps Script könnt ihr ähnlich wie mit [Power Query](./tabellenkalkulation.md#power-query) Daten von der [CiviCRM API](./civicrm-api.md) und anderen Datenquellen (teil-)automatisiert in Google Sheets laden. So könnt ihr einfache Datenintegrationen selbst umsetzen. Der Einsatz erfordert jedoch Grundkenntnisse in JavaScript. Für komplexe Datenpipelines sind Python, R oder spezialisierte ETL-Tools oft die bessere Wahl.
