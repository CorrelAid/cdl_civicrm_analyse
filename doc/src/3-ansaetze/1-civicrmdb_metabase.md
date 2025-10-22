# CiviCRM Datenbank & Metabase

_**Das Business Intelligence Tool Metabase mit der CiviCRM Datenbank verbinden - Daten auswerten und Daten visualisieren in Metabase**_


[💾 daten-organisieren](./../2-datenlebenszyklus.md#daten-organisieren): [CiviCRM Datenbank](./../4-tools/1-civicrm_intern/2-civicrm-datenbank.md) und (partiell) in [Metabase](./../4-tools/3-bi-tools.md#metabase) <br>
[🔢 daten-auswerten](./../2-datenlebenszyklus.md#daten-auswerten): [Metabase](./../4-tools/3-bi-tools.md#metabase) <br>
[📊 daten-visualisieren](./../2-datenlebenszyklus.md#daten-visualisieren): [Metabase](./../4-tools/3-bi-tools.md#metabase) <br>
[⚙️ daten-verbinden](./../2-datenlebenszyklus.md#daten-verbinden): über direkte Anbindung der CiviCRM Datenbank an Metabase


## Voraussetzungen
- Direkter Zugriff auf eure CiviCRM Datenbank
- Einen Account für eine Metabase Instanz mit Admin-Rechten

## Anleitung
### Setup
Fügt wie [hier](./../4-tools/3-bi-tools.md#mb-db-hinzufuegen) beschrieben eine Verbindung zu eurer Datenbank zu Metabase hinzu.


### Daten analysieren und visualisieren
Sobald Metabase Zugriff auf eure CiviCRM-Datenbank habt, könnt ihr *Fragen* erstellen und diese in *Dashboards* visualisieren und darstellen. Mehr zur Analyse und Visualisierung in Metabase [hier](../4-tools/3-bi-tools.md#mb-daten-analysieren).

### Daten organisieren
Die CiviCRM-Datenbank hat sehr viele Tabellen - verständlich bei so einer umfassenden Softwarelösung. Zum Beispiel sind in der Tabelle Kontakte nur numerische IDs für das Geschlecht vorhanden. Die Labels finden sich in einer eigenen Tabelle. Diese Tabellen bei jeder *Frage* zusammenzuführen, ist auf Dauer nervig und zeitraubend. Es lohnt es sich daher, ein bisschen Datenmodellierung in Metabase zu machen. Hierfür könnt ihr die [**Modell-Funktion**](https://www.metabase.com/docs/latest/data-modeling/models) verwenden. So könnt ihr z.B. ein Modell “Kontakte” anlegen, welches die Genderoptionen bereits an die Kontakte-Tabelle anfügt. Euer Modell könnt ihr dann in allen weiteren *Fragen* und verbundenen Analyse- und Visualisierungsschritten nutzen.

## Beispiel: Kontakt- und Spendendashboard

Als Teil des Datenvorhabens haben wir ein [Beispiel-Dashboard](http://mtbs.correlaid.org/public/dashboard/cfbe9014-3548-4234-979d-b0803074a8ed) erstellt, welches einen Überblick über die Kontakte und Spenden + Kampagnenbeiträge in unserer Testdatenbank gibt. 
Das Dashboard hat zwei Tabs:
- [Kontakte](https://mtbs.correlaid.org/dashboard/11-civicrm-kontakte-und-spenden?tab=20-kontakte): Deskriptive Statistiken zu unseren Fake-Kontakten
- [Spenden](https://mtbs.correlaid.org/dashboard/11-civicrm-kontakte-und-spenden?tab=21-spenden): Deskriptive Statistiken zu Zuwendungen, spezifisch zu Spenden und Kampagnenbeiträgen.

Als kleiner Vorgeschmack hier die Visualisierung unserer fiktiven Spendenkampagne im Dezember 2024: 
<iframe width="100%" height="400px%" src="http://mtbs.correlaid.org/public/question/fea84d3c-32e0-4cf5-adb9-a4e19c665483"></iframe>


## Vorteile
- Über die Datenbank erhaltet ihr Zugriff auf den gesamten Umfang eurer Daten und seid somit sehr flexibel in euren Auswertungen
- Tools wie [BI-Tools](../4-tools/3-bi-tools.md) funktionieren am besten mit einer direkten Verbindung mit der CiviCRM-Datenbank

## Nachteile
- Datensicherheit: ein direkter Zugriff auf die Datenbank ist auch immer ein Datensicherheitsrisiko. Deshalb kann euer CiviCRM-Dienstleister (berechtigte) Bedenken haben, euch diesen Zugriff zu gewähren. Greift wenn möglich auf die [API](../4-tools/1-civicrm_intern/3-civicrm-api.md) zurück.
- Komplexität: Die Daten liegen in der CiviCRM in zahlreichen Tabellen ab. Sich hier zurecht zu finden, erfordert eine Einarbeitung in SQL und einen gewissen Spürsinn: Die Entity-Relationship-Diagramme (ERDs) für CiviCRM sind zwar [hier](https://docs.civicrm.org/dev/en/latest/api/ERDs/#contact-info) dokumentiert, aber trotzdem müsst ihr euch sicher zu einem gewissen Grad selbst durch die Daten "wühlen", v.a. wenn ihr Daten aus verschiedenen CiviCRM-Datentypen kombinieren wollt.

## Fazit
Für die Verwendung von bestimmten externen Tools (v.a. BI-Tools) kann ein direkter Zugriff auf die CiviCRM-Datenbank sinnvoll sein. Aufgrund der Datensicherheitsrisiken solltet ihr sehr verantwortungsbewusst mit dieser Option umgehen und Rücksprache mit eurem CiviCRM-Dienstleister halten.

Falls ihr für externe Tools den Zugriff auf eine Datenbank benötigt, ist alternativ das Duplizieren eines Teils der CiviCRM Daten in eine [Managed Datenbank](../4-tools/4-managed-datenbank.md) über die API und [Workflow-Tools](../4-tools/5-workflow-tools.md) eine Option. Siehe dafür das [Kapitel zu ETL](./4-api_db_wf_mtbs/0-index.md).

