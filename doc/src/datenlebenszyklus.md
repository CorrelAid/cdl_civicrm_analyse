# CiviCRM Daten im Datenlebenszyklus

Der [Datenlebenszyklus](https://civic-data.de/datenlebenszyklus/) gibt einen Überblick über den Ablauf einer Datenanalyse - von der Planung bis hin zur Umsetzung. 


![Darstellung der sieben Schritte des Datenlebenszyklus: planen &fragen, Daten finden, Daten organisieren, Daten auswerten, Daten visualiseren, Daten kommunizieren, entscheiden und handeln. Der Zyklus fängt dann wieder von vorne an. Rahmenthemen sind Datenschutz & Ethik sowie Datenkultur.](./images/Datenlebenszyklus-blau_mL.png)


Wir verwenden den Datenlebenszyklus hier, um Komponenten und Tools den Schritten zuzuordnen. Wir fokussieren uns dabei auf die folgenden Aspekte:

#### Daten organisieren 💾 {#daten-organisieren}
*Wo und wie werden Daten gespeichert? Wie werden sie verwaltet und wie werden sie bereinigt?*

&rarr; Im Kontext unseres Datenvorhabens hat CiviCRM und seine [SQL-Datenbank](./komponenten/civicrm-datenbank.md) als Ort zur Speicherung und Verwaltung von Daten häufig ausgereicht. Trotzdem gibt es auch Fälle, wo zusätzliche Tools (z.B. eine [Managed Datenbanken](./komponenten/managed-datenbank.md)) zur Organisation und Speicherung von CiviCRM-Daten sinnvoll waren, z.B. um [historische Daten vorzuhalten]() oder [Spenderübergänge zu analysieren](). 

[💾 CiviCRM Datenbank](./komponenten/civicrm-datenbank.md) [💾 Managed Datenbank](./komponenten/managed-datenbank.md) 
#### Daten auswerten 🔢  {#daten-auswerten}
*Wie werden Daten analysiert? Wie werden Ergebnisse analysiert?*

&rarr; CiviCRM Daten können unterschiedlich ausgewertet und analysiert werden: Von einfachen deskriptiven Analysen über tiefergehende Analysen hin zu komplexen Machine-Learning-Modellen zur Vorhersage von Spenden. Wir haben uns in unserer Arbeit zunächst auf einfache Auswertungen fokussiert, da diese am übertragbarsten sind. 

[🔢 SearchKit](./komponenten/civicrm-searchkit-chartkit.md#searchkit) [🔢 Excel](./komponenten/excel.md) [🔢 Google Sheets](./komponenten/google-workspace.md#google-sheets) [🔢 Metabase](./komponenten/bi-tools.md#metabase) [🔢 Python](./komponenten/python-und-r.md#python) [🔢 R](./komponenten/python-und-r.md#r) 


#### Daten visualisieren 📊 {#daten-visualisieren}
*Wie werden Daten visuell ansprechend und passend für die Zielgruppe aufbereitet?*

&rarr; Viele Organisationen möchten ihre CiviCRM-Daten nicht nur auswerten, sondern auch in Datenvisualisierungen oder Dashboards aufbereiten. 

[📊 Excel](./komponenten/excel.md) [📊 Metabase](./komponenten/bi-tools.md#metabase) [📊 Power BI](./komponenten/bi-tools.md#power-bi) [📊 Apache Superset](./komponenten/bi-tools.md#superset) [📊 ChartKit](./komponenten/searchkit-chartkit.md#chartkit) [📊 Civisualize](./komponenten/civicrm-weitere-tools.md#civisualize) [📊 Google Sheets](./komponenten/google-workspace.md#google-sheets) 

#### Daten kommunizieren {#daten-kommunizieren}
*Wie werden Ergebnisse zielgruppengerecht kommuniziert und geteilt?*

&rarr; 


#### Daten verbinden & Datenflüsse ermöglichen ⚙️ {#daten-verbinden}
*Wie werden Daten zusammengeführt? Wie werden Datenflüsse zwischen Tools ermöglicht?*

&rarr; Zusätzlich zu den Schritten des Datenlebenszyklus ist es bei unseren Experimenten sehr relevant gewesen, Komponenten und Tools miteinander zu integrieren, sie zu verbinden und Datenflüsse zu ermöglichen. Deshalb sprechen wir zusätzlich auch von *Daten verbinden & Datenflüsse ermöglichen*. 

[⚙️ CiviCRM-API](./komponenten/civicrm-api.md) [⚙️ Workflow Tools](./komponenten/workflow-tools.md) [⚙️ MS Power Query](./komponenten/excel.md#power-query) [⚙️ Google AppScript](./komponenten/google-workspace.md#google-appscript)

#### Datenschutz
&rarr; Da in CiviCRM fast immer personenbezogene Daten gespeichert werden, spielt Datenschutz als Rahmenthema eine wichtige Rolle. 


