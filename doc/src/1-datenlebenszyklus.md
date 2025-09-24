# CiviCRM Daten im Datenlebenszyklus

<figure style="margin: 0">
<p>
  <img src="./images/datenlebenszyklus.png" alt="Darstellung der sieben Schritte des Datenlebenszyklus: planen &fragen, Daten finden, Daten organisieren, Daten auswerten, Daten visualiseren, Daten kommunizieren, entscheiden und handeln. Der Zyklus fängt dann wieder von vorne an. Rahmenthemen sind Datenschutz & Ethik sowie Datenkultur.">
  <figcaption><small>Grafik "Datenlebenszyklus blau", ursprünglich von Gesellschaft für Informatik e.V. (2024), zugeschnitten von CorrelAid e.V., ist lizenziert unter <a href="https://creativecommons.org/licenses/by/4.0/deed.de">CC BY 4.0</a>.</small></figcaption>
  </p>
</figure>

Der Datenlebenszyklus, visualisiert in der obigen Grafik, gibt einen Überblick über den Ablauf einer Datenanalyse - von der Planung bis hin zur Umsetzung. Wir werden dieses Konzept hier nicht genauer erklären. Deswegen empfiehlt es sich, bei Bedarf und Interesse die entsprechende [Informationsseite]([Datenlebenszyklus](https://civic-data.de/datenlebenszyklus/)) auf der CDL-Website zu lesen.

Wir verwenden den Datenlebenszyklus hier, um Komponenten und Tools den Schritten zuzuordnen und fokussieren uns dabei auf die folgenden Aspekte:

### Planen und fragen 🗺️ {#planen-und-fragen}
*Welche Fragen will ich mithilfe von Daten beantworten? Welche Daten brauche ich?**

Bei unserem Projekt gingen wir größenteils davon aus, dass interessierte Organisation schon Daten haben und auch wissen, welche Fragen sie an die Daten stellen wollen. Allerdings können manche Fragestellungen nur beantwortet werden, wenn man die in CiviCRM erfassten Daten um eigene Felder erweitert. 

[Erweiterung von CiviCRM-Daten](./tools/1-civicrm_intern/1-erweiterung-daten.md)

### Daten organisieren 💾{#daten-organisieren}
*Wo und wie werden Daten gespeichert? Wie werden sie verwaltet und wie werden sie bereinigt?*

&rarr; Im Kontext unseres Datenvorhabens hat CiviCRM und seine [SQL-Datenbank](./tools/1-civicrm_intern/2-civicrm-datenbank.md) als Ort zur Speicherung und Verwaltung von Daten häufig ausgereicht. Trotzdem gibt es auch Fälle, wo zusätzliche Tools (z.B. eine [Managed Datenbank](./tools/4-managed-datenbank.md)) zur Organisation und Speicherung von CiviCRM-Daten sinnvoll waren.

Dabei geht es nicht nur um den Speicherort: Wenn Daten langfristig gespeichert werden und auf deren Basis Analysen stattfinden sollen, lassen sich in diesem Schritt Methoden aus dem Bereich des **Data Engineering** und **Data Modeling** anwenden. Dies umfasst unter anderem das Aggregieren oder das Kombinieren von Datensätzen.

[💾 CiviCRM Datenbank](./tools/1-civicrm_intern/2-civicrm-datenbank.md) [💾 Managed Datenbank](./tools/4-managed-datenbank.md)


### Daten auswerten 🔢  {#daten-auswerten}
*Wie werden Daten analysiert? Wie werden Ergebnisse analysiert?*

&rarr; CiviCRM Daten können unterschiedlich ausgewertet und analysiert werden: Von einfachen deskriptiven Analysen über tiefergehende Analysen hin zu komplexen Machine-Learning-Modellen zur Vorhersage von Spenden. Wir haben uns in unserer Arbeit überwiegend auf einfache Auswertungen fokussiert, da diese am übertragbarsten sind. 

[🔢 CiviCRM SearchKit](./tools/1-civicrm_intern/4-civicrm-searchkit-chartkit.md)  [🔢 Excel, Google Sheets & Co.](./tools/2-tabellenkalkulation.md) [🔢 Metabase & andere BI Tools](./tools/3-bi-tools.md) [🔢 Python & R](./tools/6-python-und-r.md) [🔢 CiviCRM Reports/Berichte](./tools/1-civicrm_intern/5-civicrm-weitere-tools.md#reportsberichte) 


### Daten visualisieren 📊 {#daten-visualisieren}
*Wie werden Daten visuell ansprechend und passend für die Zielgruppe aufbereitet?*

&rarr; Viele Organisationen möchten ihre CiviCRM-Daten nicht nur auswerten, sondern auch in Datenvisualisierungen oder Dashboards aufbereiten. 

[📊 CiviCRM ChartKit](./tools/1-civicrm_intern/4-civicrm-searchkit-chartkit.md#chartkit)  [📊 Excel, Google Sheets & Co.](./tools/2-tabellenkalkulation.md) [📊 Metabase & andere BI Tools](./tools/3-bi-tools.md) [📊 Python & R](./tools/6-python-und-r.md) [📊 Civisualize](./tools/1-civicrm_intern/5-civicrm-weitere-tools.md#civisualize) 


### Daten kommunizieren 💬 {#daten-kommunizieren}
*Wie werden Ergebnisse zielgruppengerecht kommuniziert und geteilt?*

&rarr; Auswertungen von CiviCRM-Daten können unterschiedliche Zielgruppen haben: man selbst, die eigene Organisation bzw. das eigene Team, die breite Öffentlichkeit, existierende Fördermittelgeber oder potenzielle Sponsor\*innen. Je nach Zielgruppe(n) ergeben sich unterschiedliche Anforderungen an die Tiefe und Komplexität der Analyse, an das Design der Visualisierungen, an die Kommunikationswege.

Das Kommunizieren von Daten und Ergebnissen von Datenauswertungen ist eine Kunst bzw. ein Handwerk an sich[^note-datastorytelling]. Wir beschränken uns hier nur darauf, inwiefern Analyse- und Visualisierungs-Tools die Möglichkeiten bieten, Ergebnisse zu teilen, und inwiefern sie Ansprüche an Design und Professionalität erfüllen. Deshalb listen wir hier nicht separat "Datenkommunikationstools".

[^note-datastorytelling]: Das [E-Learning Datenvisualisierung und Storytelling](https://civic-data.de/bildungsangebote/e-learning-datenvisualisierung-und-storytelling/) des Civic Data Labs gibt einen guten Einstieg ins Thema. 

### Daten verbinden & Datenflüsse ermöglichen ⚙️ {#daten-verbinden}
*Wie werden Daten zusammengeführt? Wie werden Datenflüsse zwischen Tools ermöglicht?*

&rarr; Zusätzlich zu den Schritten des Datenlebenszyklus ist es bei unseren Experimenten sehr relevant gewesen, Komponenten und Tools miteinander zu integrieren, sie zu verbinden und Datenflüsse zu ermöglichen. Deshalb sprechen wir zusätzlich auch von *Daten verbinden & Datenflüsse ermöglichen*. 

[⚙️ CiviCRM-API](./tools/1-civicrm_intern/3-civicrm-api.md) [⚙️ Workflow Automation Tools](./tools/5-workflow-tools.md) [⚙️ MS Power Query](./tools/2-tabellenkalkulation.md#power-query) [⚙️ Google Apps Script](./tools/2-tabellenkalkulation.md#google-apps-script) [⚙️ Python](./tools/6-python-und-r.md#python)

### Datenschutz
&rarr; Da in CiviCRM fast immer personenbezogene Daten gespeichert werden, bildet **Datenschutz einen wichtigen Rahmen für die Auswertung von CiviCRM-Daten**. Dies ist vor allem relevant, wenn Daten außerhalb von CiviCRM weiterverarbeitet werden. Wir haben bei unserer Arbeit darauf geachtet, Tools zu priorisieren, die Datensouveränität ermöglichen.

Trotzdem haben wir **auch Software von außereuropäischen Anbietern** in unsere Recherche miteinbezogen. Wenn ihr diese Tools nutzen möchtet, empfehlen wir euch, Daten in CiviCRM oder europäischen Umgebungen so weit zu aggregieren, dass kein Rückschluss mehr auf Individuen möglich ist.
