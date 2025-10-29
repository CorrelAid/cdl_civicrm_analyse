# Python und R

Mit Programmiersprachen wie Python und R lässt sich im Prinzip alles umsetzen, was man für die Analyse und Visualisierung braucht. 

Ähnlich wie bei [SQL](./4-managed-datenbank.md#grafische-nutzeroberfläche-statt-sql): Coden ist ein nützlicher Skill, es zu lernen erfordert jedoch Zeit. Deswegen sind Workflow Automation Tools oder andere grafische Nutzeroberflächen eine nützliche Alternative. Selbst geschrieben Skripts und Programme erfordern außerdem oft spezielle Maintenance und können Abhängigkeiten zu Entwickler:innen herstellen. 

## Python
[🔢 daten-auswerten](./../1-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../1-datenlebenszyklus.html#daten-visualisieren) [💬 daten-kommunizieren](./../1-datenlebenszyklus.html#daten-kommunizieren) [🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)

Python ist eine sehr vielseitige und populäre Programmiersprache. Mit Python könnt ihr Daten aus CiviCRM abrufen, transformieren, analysieren und in interaktiven Dashboards oder Notebooks darstellen.

### Datenintegration mit CiviCRM
Python bietet verschiedene Möglichkeiten, um auf CiviCRM-Daten zuzugreifen:
- API-Anbindung: Mit Bibliotheken wie [requests](https://docs.python-requests.org/) oder [httpx](https://www.python-httpx.org/) können direkt API-Anfragen an CiviCRM gestellt werden.
- Datenimport: Mit [pandas](https://pandas.pydata.org/) können CSV- oder JSON-Exporte aus CiviCRM eingelesen und weiterverarbeitet werden.
- Automatisierung: Skripte können regelmäßig ausgeführt werden, um Daten aktuell zu halten.

```admonish info title="Beispiel-Code"
Beispiele dafür, wie ihr die API in Python nutzen könnt, findet ihr im [Repository](https://github.com/CorrelAid/cdl_civicrm_analyse) in den Ordnern `supporting_code/notebooks` und `supporting_code/test_data`. Letzteres ist der Code, den wir für die Erstellung von Testdaten verwendet haben.
```

### Analyse und Visualisierung
Für die Analyse und Visualisierung von CiviCRM-Daten stehen zahlreiche Bibliotheken zur Verfügung:
- Interaktive Dashboards und Anwendungen: Mit [dash](https://plotly.com/dash/), [streamlit](https://streamlit.io/), [Quarto](https://quarto.org/) oder [Marimo](https://marimo.io/) können interaktive Dashboards bzw. kleine Datenanwendungen erstellt werden.
- Notebooks & Berichte: [Marimo](https://marimo.io/), [Jupyter Notebooks](https://jupyter.org/), [JupyterLab](https://jupyterlab.readthedocs.io/) oder [Quarto](https://quarto.org/) ermöglichen eine interaktive Datenanalyse und Dokumentation in einem Dokument. Aus diesen Dokumenten können PDF- oder HTML-Berichte/Reports erstellt werden. Letztere bieten abhängig vom gewählten Tool und der genauen Implementation ein gewisses Maß an Interaktivität.
- Datenanalyse: pandas und [numpy](https://numpy.org/) ermöglichen komplexe Datenanalysen, Filterungen und Transformationen.
- Statistische Analysen: [scipy](https://scipy.org/) und [statsmodels](https://www.statsmodels.org/) bieten erweiterte statistische Funktionen.
- Visualisierung: [matplotlib](https://matplotlib.org/), [seaborn](https://seaborn.pydata.org/) und [plotly](https://plotly.com/python/) helfen, Daten in ansprechenden Grafiken darzustellen.

### Potenziell interessante Frameworks und Tools
- [pandas](https://pandas.pydata.org/) – Datenanalyse und -manipulation
- [numpy](https://numpy.org/) – Numerische Berechnungen
- [matplotlib](https://matplotlib.org/) – Grundlegende Visualisierungen
- [seaborn](https://seaborn.pydata.org/) – Statistische Datenvisualisierung
- [plotly](https://plotly.com/python/) – Interaktive Visualisierungen
- [dash](https://plotly.com/dash/) – Interaktive Dashboards
- [streamlit](https://streamlit.io/) – Schnelle Erstellung von Web-Apps für Daten
- [Jupyter Notebooks](https://jupyter.org/) – Interaktive Datenanalyse und Dokumentation


### Fazit

Python ist eine sehr gute Wahl, wenn ihr CiviCRM-Daten nicht nur analysieren, sondern auch in automatisierte Prozesse, interaktive Dashboards oder Webanwendungen integrieren wollt. Die Sprache bietet eine große Flexibilität und viele Tools für Datenanalyse, Visualisierung und Automatisierung. Wenn ihr bereits mit Python arbeitet oder eine skalierbare Lösung für komplexe Datenanalysen sucht, ist Python richtig für euch.


## R
[🔢 daten-auswerten](./../1-datenlebenszyklus.html#daten-auswerten) [📊 daten-visualisieren](./../1-datenlebenszyklus.html#daten-visualisieren) [🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)

R ist eine Programmiersprache und Umgebung, die speziell für statistische Datenanalyse und Visualisierung entwickelt wurde. Sie eignet sich hervorragend für die Integration, Analyse und Darstellung von CiviCRM-Daten, insbesondere wenn statistische Auswertungen im Vordergrund stehen.

### Datenintegration mit CiviCRM
R bietet verschiedene Pakete, um Daten aus CiviCRM zu importieren und zu verarbeiten:
- API-Anbindung: Mit Paketen wie [httr](https://httr.r-lib.org/) oder [curl](https://cran.r-project.org/web/packages/curl/index.html) können direkt API-Anfragen an CiviCRM gestellt werden.
- Datenimport: Pakete wie [readr](https://readr.tidyverse.org/) oder [jsonlite](https://cran.r-project.org/web/packages/jsonlite/index.html) ermöglichen das Einlesen von CSV- oder JSON-Dateien aus CiviCRM.
- Automatisierung: R-Skripte können regelmäßig ausgeführt werden, um Daten zu aktualisieren.

### Analyse und Visualisierung
R bietet eine Vielzahl von Paketen für die Analyse und Visualisierung von Daten:
- Datenanalyse: [dplyr](https://dplyr.tidyverse.org/) und [tidyr](https://tidyr.tidyverse.org/) ermöglichen das Bereinigen, Transformieren und Analysieren von Daten.
- Statistische Analysen: R bietet eine breite Palette an Paketen für statistische Analysen, darunter [stats](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/00Index.html) und [ggplot2](https://ggplot2.tidyverse.org/).
- Visualisierung: ggplot2 ist eines der mächtigsten Pakete für Datenvisualisierung und ermöglicht die Erstellung hochwertiger Grafiken.
- Interaktive Dashboards: Mit [shiny](https://shiny.rstudio.com/) können interaktive Webanwendungen und Dashboards erstellt werden.
- Notebooks: [R Markdown](https://rmarkdown.rstudio.com/) und [RStudio](https://www.rstudio.com/) ermöglichen die Erstellung von interaktiven Berichten und Notebooks, die Analyse und Dokumentation kombinieren.

### Potenziell interessante Pakete und Tools
- [RStudio](https://www.rstudio.com/) – Entwicklungsumgebung für R
- [Quarto](https://quarto.org/) oder [RMarkdown](https://rmarkdown.rstudio.com/) – Interaktive Berichte, Dashboards und Notebooks
- [shiny](https://shiny.rstudio.com/) – Interaktive Dashboards und Web-Apps
- [tidyverse Packages](https://tidyverse.org/): Sammlung von aufeinander abgestimmten Packages, die Datenmanipulation, Datenbereinigung (u.a. `dplyr`, `tidyr`) und Datenvisualisierung (`ggplot2`) in R ermöglichen. 
- [httr](https://httr.r-lib.org/) – API-Anfragen
- [jsonlite](https://cran.r-project.org/web/packages/jsonlite/index.html) – JSON-Datenverarbeitung


### Fazit: R

R ist die beste Wahl, wenn euer Fokus auf statistischen Analysen und hochwertigen Visualisierungen liegt. Die Sprache bietet viele Pakete für Datenanalyse und -darstellung, insbesondere für wissenschaftliche oder detaillierte statistische Auswertungen. Mit Tools wie shiny, Quarto und RMarkdown könnt ihr interaktive Berichte und Dashboards erstellen; mit ggplot könnt ihr eure Daten visualisieren.
