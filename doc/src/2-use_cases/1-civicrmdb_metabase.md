# CiviCRM Datenbank & Metabase

_**Das Business Intelligence Tool Metabase mit der CiviCRM Datenbank verbinden - Daten auswerten und Daten visualisieren in Metabase**_


[💾 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren): [CiviCRM Datenbank](./../3-tools/civicrm_intern/2-civicrm-datenbank.md) und (partiell) in [Metabase](./../3-tools/bi-tools.md#metabase) <br>
[🔢 daten-auswerten](./../1-datenlebenszyklus.html#daten-auswerten): [Metabase](./../3-tools/bi-tools.md#metabase) <br>
[📊 daten-visualisieren](./../1-datenlebenszyklus.html#daten-visualisieren): [Metabase](./../3-tools/bi-tools.md#metabase) <br>
[⚙️ daten-verbinden](./../1-datenlebenszyklus.html#daten-verbinden): über direkte Anbindung der CiviCRM Datenbank an Metabase


## Voraussetzungen
- direkter Zugriff auf eure CiviCRM Datenbank
- Einen Account für eine Metabase Instanz mit Admin-Rechten

## Anleitung
### Setup
Fügt wie [hier](./../3-tools/3-bi-tools.md#mb-db-hinzufuegen) beschrieben eine Verbindung zu eurer Datenbank zu Metabase hinzu.



### Daten analysieren und visualisieren
Sobald Metabase Zugriff auf eure CiviCRM-Datenbank habt, könnt ihr *Fragen* erstellen und diese in *Dashboards* visualisieren und darstellen. Mehr zur Analyse und Visualisierung in Metabase [hier](../3-tools/3-bi-tools.md#mb-daten-analysieren).

### Daten organisieren
Die CiviCRM-Datenbank hat sehr viele Tabellen - verständlich bei so einer umfassenden Softwarelösung. Zum Beispiel sind in der Tabelle Kontakte nur numerische IDs für das Geschlecht vorhanden. Die Labels finden sich in einer eigenen Tabelle. Diese Tabellen bei jeder *Frage* zusammenzuführen, ist auf Dauer nervig und zeitraubend. Es lohnt es sich daher, ein bisschen Datenmodellierung in Metabase zu machen. Hierfür könnt ihr die [**Modell-Funktion**](https://www.metabase.com/docs/latest/data-modeling/models) verwenden. So könnt ihr z.B. ein Modell "Kontakte" anlegen, welches die Genderoptionen bereits an die Kontakte-Tabelle anfügt. Euer Modell könnt ihr dann in allen weiteren *Fragen* und verbundenen Analyse- und Visualisierungsschritten nutzen.

## Beispiel: Kontakt- und Spendendashboard

Als Teil des Datenvorhabens haben wir ein [Beispiel-Dashboard](http://mtbs.correlaid.org/public/dashboard/cfbe9014-3548-4234-979d-b0803074a8ed) erstellt, welches einen Überblick über die Kontakte und Spenden + Kampagnenbeiträge in unserer Testdatenbank gibt. 
Das Dashboard hat zwei Tabs:
- [Kontakte](https://mtbs.correlaid.org/dashboard/11-civicrm-kontakte-und-spenden?tab=20-kontakte): Deskriptive Statistiken zu unseren Fake-Kontakten
- [Spenden](https://mtbs.correlaid.org/dashboard/11-civicrm-kontakte-und-spenden?tab=21-spenden): Deskriptive Statistiken zu Zuwendungen, spezifisch zu Spenden und Kampagnenbeiträgen.

Als kleiner Vorgeschmack hier die Visualisierung unserer fiktiven Spendenkampagne im Dezember 2024: 
<iframe width="100%" height="400px%" src="http://mtbs.correlaid.org/public/question/fea84d3c-32e0-4cf5-adb9-a4e19c665483"></iframe>


