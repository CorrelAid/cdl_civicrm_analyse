# Excel & Co.

## Microsoft Excel
[🔢 daten-auswerten](./../2-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../2-datenlebenszyklus.html#daten-visualisieren) [⚙️ daten-verbinden](./../2-datenlebenszyklus.html#daten-verbinden)<br>


Microsoft Excel ist ein **häufig genutztes Tabellenkalkulationsprogramm**, mit dem ihr Daten aus CiviCRM oder anderen Quellen strukturieren, analysieren und visualisieren könnt. Ihr könnt damit:
- ... **CiviCRM-Daten** (z. B. Spenden, Mitglieder oder Events) mithilfe von Pivot-Tabellen, Formeln und Filtern **auswerten**, um z. B. Spendenentwicklungen zu analysieren oder Zielgruppen zu vergleichen ([🔢 daten-auswerten](./../2-datenlebenszyklus.html#daten-auswerten)) 
- ... mithilfe von Diagrammen die **Ergebnisse anschaulich darstellen** ([📊 daten-visualisieren](./../2-datenlebenszyklus.html#daten-visualisieren))
- ... mit Power Query ([s.u.](#power-query)) **Daten automatisch aktuell halten** ([⚙️ daten-verbinden](./../2-datenlebenszyklus.html#daten-verbinden)).

Excel kann sowohl lokal (Desktop-Version) als auch in der Cloud (Excel for the Web) eingesetzt werden.

#### Vorteile von Excel
- **Geringe Einstiegshürde & weit verbreitet**: Viele Nutzer\*innen kennen Excel bereits, und es entstehen ggf. **keine zusätzlichen Kosten**, weil Lizenzen bereits vorhanden sind.
- Flexibilität: Excel ermöglicht **Datenanalyse, -visualisierung und -management** in einem Tool.
- **Datenorganisation**: in Excel können Daten aus CiviCRM zusammengeführt werden mit Daten aus anderen Quellen
- **Integration**: Wer die **Microsoft Cloud** nutzt, kann Excel einfach mit **Power BI** oder anderen Tools verbinden.

#### Nachteile von Excel
- **"Excel-Parallelwelten"**: Wenn Nutzer\*innen Daten direkt in Excel ändern statt in CiviCRM, entstehen inkonsistente Datenquellen und der Aufwand für die Wiederherstellung einer "Single Source of Truth"[^note-ssot] steigt.
- **Datenschutz und Datensouveränität**: Bei Excel on the Web müssen Daten mit Microsoft geteilt werden – nicht alle Organisationen möchten / können ihre Daten mit Microsoft teilen.
- **Eingeschränkte Visualisierung**: Komplexe Dashboards oder maßgeschneiderte Grafiken sind in Excel schwer umsetzbar. Wenn ihr regelmäßiger oder in größerem Umfang auf Dashboards zurückgreifen möchtet, solltet ihr eher auf ein [Business Intelligence Tool](./bi-tools.md) setzen. Für maßgeschneiderte und komplexere Visualisierungen, die z.B. einmalig für eine Veröffentlichung erstellt werden, sind Programmiersprachen wie [Python oder R](./python-und-r.md) die beste Wahl. 
- **Fortgeschrittene Analysen** sind in Excel z.T. auch möglich, erfordern aber gute Kenntnis der Funktionen und Formeln. Wenn ihr mittel- bzw. langfristig komplexere Analysemethoden aus dem Bereich Machine Learning[^note-ml] oder Künstliche Intelligenz[^note-ki] nutzen möchtet, ist ggf. ein Investment in das Lernen von [Python oder R](./python-und-r.md) langfristig sinnvoller. Das gleiche gilt für die **Analyse von sehr großen Datenmengen** (z.B. über 1 Mio. Zeilen). 
- Lizenzdschungel: Nicht alle Funktionen sind in jeder Lizenz enthalten. Microsofts **Preis- und Lizenzmodelle sind schwer zu durchblicken**.

[^note-ssot]: Single Source of Truth (SSOT) bedeutet, dass alle relevanten Daten an einem zentralen, vertrauenswürdigen Ort gespeichert und gepflegt werden – statt in verschiedenen, möglicherweise widersprüchlichen Quellen. So werden Doppelarbeit, Fehler und Unsicherheiten vermieden, weil alle Teams oder Systeme auf dieselben, aktuellen Informationen zugreifen.

[^note-ml]: Eine [Erklärung des Begriffs "Machine Learning"](https://civic-data.de/selbstlernmaterial/#ml) gibt es im Selbstlernmaterial des Civic Data Labs. 

[^note-ki]: Eine [Erklärung des Begriffs "Künstliche Intelligenz"](https://civic-data.de/selbstlernmaterial/#ki) gibt es im Selbstlernmaterial des Civic Data Labs. 



#### Fazit
Aufgrund seiner Flexibilität ist und bleibt Excel eine gute Option, um **diverse Aufgaben rund um die Analyse und Visualisierung** von CiviCRM-Daten zu bewältigen. Es ist **zugänglich** für viele Nutzer\*innen. **Bei größeren Datenmengen oder höheren Anforderungen** an Auswertung, Visualisierung oder Weiterverbreitung von Daten und Ergebnissen sind **spezialisierte Tools fast immer eine bessere Wahl**.


### Power Query 
[⚙️ daten-verbinden](./../2-datenlebenszyklus.html#daten-verbinden)<br>

**Power Query** ist ein Werkzeug in Excel und Power BI, das **Daten aus verschiedenen Quellen** (z. B. CiviCRM-API, Datenbanken, Excel-Dateien) **importiert, bereinigt und für Analysen aufbereitet**. Es **automatisiert wiederkehrende Schritte**, spart Zeit und reduziert Fehler.

Für die Analyse von CiviCRM-Daten sind v.a. Power Query's [Features zum Datenimport](https://support.microsoft.com/de-de/office/importieren-von-daten-aus-datenquellen-power-query-be4330b3-5356-486c-a168-b68e9e616f5a) relevant. Wir haben Power Query verwendet, um Daten mithilfe der CiviCRM API in Excel zu importieren (siehe [unser Experiment zu SearchKit + Excel](./../3-use_cases/searchkit-tabellenkalkulation.md)). Aber auch die anderen Optionen können nützlich sein, z.B. der Import aus anderen Excel-Dateien. 

#### Vorteile von Power Query 
- **Direkter Datenimport aus CiviCRM mithilfe der CiviCRM API**: Ihr könnt Daten automatisch aktualisieren und spart euch den manuellen Schritt des Datenexports aus CiviCRM. Siehe [unser Experiment zu SearchKit + Excel](./../3-use_cases/searchkit-tabellenkalkulation.md). 
- Flexibilität: Power Query kann mehr als nur API-Daten laden – eine Einarbeitung lohnt sich.


#### Nachteile von Power Query 
- **Nicht ganz einfache Bedienung**: Die Benutzeroberfläche ist unübersichtlich, und für fortgeschrittene Funktionen müsst ihr ggf. lernen, in Power Query in der Sprache "M" zu programmieren. Die Dokumentation zu M ist nicht sehr umfangreich und wenn man LLMs um Hilfe fragt, bekommt man manchmal Halluzinationen zurück.
- in **Excel für das Web kann man Power Queries nicht bearbeiten, sondern nur ausführen**. Das ist unpraktisch, wenn kollaborativ im Browser gearbeitet wird und Queries häufig editiert werden müssen. 
- **Bewusster Umgang mit Sicherheit nötig**: Wenn ihr Power Query verwendet, um mit der CiviCRM API zu kommunizieren, müsst ihr euren CiviCRM API-Schlüssel in der Excel Datei hinterlegen. Das bedeutet, dass ihr diese Datei nicht direkt mit Externen teilen solltet, da diese sonst Zugriff auf euren API-Schlüssel und somit Daten in eurer CiviCRM-Instanz bekommen könnten. 

#### Fazit


Power Query ist eine sinnvolle Option, um CiviCRM-Daten (teil-)automatisch in Excel zu integrieren – das reduziert manuelle Fehler und spart Zeit. Allerdings sollte der Einsatz nur mit einem hohen Bewusstsein für Datensicherheit erfolgen, um API-Schlüssel nicht versehentlich weiterzugeben.
Falls bereits (zu) viele Excel-Dateien und -Analysen existieren, hilft Power Query, zentrale Referenzdatensätze zu erstellen, auf die [andere Excel-Dateien mit Power Query zugreifen können](https://support.microsoft.com/de-de/office/importieren-von-daten-aus-datenquellen-power-query-be4330b3-5356-486c-a168-b68e9e616f5a). Dadurch lassen sich Datenkonsistenz verbessern und Ordnung in die Analyseprozesse bringen.


## Google Sheets
*Der Text dieses Abschnitts wurde von Mistral erstellt und dann inhaltlich und redaktionell überarbeitet und ergänzt.*

[🔢 daten-auswerten](./../2-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../2-datenlebenszyklus.html#daten-visualisieren) [⚙️ daten-verbinden](./../2-datenlebenszyklus.html#daten-verbinden)

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


### Google Apps Script
[⚙️ daten-verbinden](./../2-datenlebenszyklus.html#daten-verbinden)

Google Apps Script ist eine JavaScript-basierte Programmiersprache, mit der ihr u.a. **Abläufe in Google Sheets automatisieren** könnt. Mit AppsScript können wir CiviCRM-Daten mithilfe der CiviCRM-API direkt in Google Sheets laden. 

#### Vorteile von Google Apps Script
- **Kostenlos und integriert**: Keine zusätzliche Software nötig – läuft direkt in Google Sheets.
- **Direkter Datenimport aus CiviCRM mithilfe der CiviCRM API**: Ihr könnt Daten automatisch aktualisieren und spart euch den manuellen Schritt des Datenexports aus CiviCRM. Siehe [unser Experiment zu SearchKit + Google Sheets](./../3-use_cases/searchkit-tabellenkalkulation.md). 

#### Nachteile von Google Apps Script
- Erfordert **Grundkenntnisse in JavaScript**.
- **Eingeschränkte Performance**: Bei komplexen Skripten oder großen Datenmengen kann es langsam werden.
- **Abhängigkeit von Google**: Skripte laufen nur in der Google Workspace-Umgebung.

#### Fazit: Google Apps Script
Mit Google Apps Script könnt ihr ähnlich wie mit [Power Query](./tabellenkalkulation.md#power-query) Daten von der [CiviCRM API](./civicrm-api.md) und anderen Datenquellen (teil-)automatisiert in Google Sheets laden. So könnt ihr einfache Datenintegrationen selbst umsetzen. Der Einsatz erfordert jedoch Grundkenntnisse in JavaScript. Für komplexe Datenpipelines sind Python, R oder spezialisierte ETL-Tools oft die bessere Wahl.


## Libre Office Calc
[🔢 daten-auswerten](./../2-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../2-datenlebenszyklus.html#daten-visualisieren)

LibreOffice Calc ist das Tabellenkalkulationsprogramm der **kostenlosen Open-Source [LibreOffice-Suite](https://www.libreoffice.org/)** – ähnlich wie Microsoft Excel, aber ohne Lizenzkosten und mit offenem Quellcode. Ihr könnt damit Daten analysieren, Berechnungen durchführen, Pivot-Tabellen erstellen und Diagramme generieren. Calc unterstützt gängige Formate wie XLSX und bietet viele Funktionen für Formeln, Filter und Datenvisualisierung, ist aber etwas weniger leistungsstark als Excel bei extrem großen Datenmengen.

#### Fazit
Wenn ihr auf Open Source setzen wollt, ist Libre Office Calc eine gute  und solide Wahl, die euch einen ähnlichen Funktionsumfang bietet in Bezug auf die Analyse und Visualisierung von Daten. Abstriche müsst ihr bei der Integration in Cloud-Umgebungen und bei den Fähigkeiten zur (Teil-)Automatisierung machen - eine wirklich funktionale Power Query Alternative fehlt nämlich bis jetzt. 


## OnlyOffice
[🔢 daten-auswerten](./../2-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../2-datenlebenszyklus.html#daten-visualisieren)

Eine weitere Alternative ist die Tabellenkalkulation der [ONLYOFFICE-Suite](https://www.onlyoffice.com/), die **besonders auf kollaboratives Arbeiten** in Echtzeit ausgelegt ist. Ein großer Vorteil gegenüber Libre Office Calc ist die Integration in Cloud-Dienste (z. B. Nextcloud, ownCloud) und die Möglichkeit, Dokumente gleichzeitig mit mehreren Nutzer*innen zu bearbeiten.

