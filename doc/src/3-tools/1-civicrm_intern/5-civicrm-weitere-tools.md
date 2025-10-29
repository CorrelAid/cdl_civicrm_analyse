# Weitere CiviCRM Tools

Neben SearchKit und ChartKit gibt es noch weitere Tools und Erweiterungen in CiviCRM, mithilfe derer ihr Daten analysieren und visualisieren könnt. Hier gehen wir noch auf Reports/Berichte und die Erweiterung Civisualize ein.

# Reports/Berichte
[🔢 daten-auswerten](./../../1-datenlebenszyklus.html#daten-auswerten) [💬 daten-kommunizieren](./../../1-datenlebenszyklus.html#daten-kommunizieren)

_Dieser Einführungstext wurde von ChatGPT erstellt._

CiviCRM Reports sind vorgefertigte oder individuell erstellbare Auswertungen, mit denen Organisationen ihre Daten aus CiviCRM (z. B. Kontakte, Spenden, Mitgliedschaften, Events) analysieren können. Sie bieten Filter- und Gruppierungsoptionen, um genau die Informationen sichtbar zu machen, die für Entscheidungen oder Nachweise gebraucht werden. Die Reports können gespeichert, exportiert und auch automatisiert per E-Mail verschickt werden.


#### Vorteile
- standardisierte Vorlagen
- können als CSV oder direkt als PDF exportiert werden
- Versand via Mail möglich
- einfache Möglichkeit, um "Listen" zu bekommen

#### Nachteile
- nicht so flexibel und mächtig wie [SearchKit](./4-civicrm-searchkit-chartkit.md#searchkit)
- Ergebnisse können nicht über die API v4 exportiert werden

# Civisualize
[📊 daten-visualisieren](./../../1-datenlebenszyklus.html#daten-visualisieren)

[Civisualize](https://civicrm.org/extensions/civisualize-missing-data-visualization-extension) ist eine CiviCRM Erweiterung, mit der Nutzer\*innen Grafiken erstellen können. Für die gängigsten CiviCRM Komponenten wie Kontakte, Zuwendungen, Veranstaltungen und Rundschreiben liefert Civisualize einige Überblicksgrafiken mit. Außerdem gibt es ein Mini-Dashboard für Spendentrends ("Donor Trends").
Eine Beschreibung der schon inkludierten Visualisierungen findet sich [hier](https://lab.civicrm.org/extensions/civisualize) (Englisch). In der Basis-Installation findet ihr Civisualize unter Berichte -> Civisualize.

Eigene bzw. zusätzliche Grafiken können mithilfe der Javascript Bibliotheken `d3.js` und `dc.js` erstellt werden. Diese Funktion richtet sich jedoch primär an Entwickler*innen, die sich mit SQL, der [API von CiviCRM](komponenten/civicrm-api) und Javascript auskennen.


#### Vorteile von Civisualize

- Visualisierungen sind integriert in CiviCRM und leicht auffindbar für alle Nutzer*innen
- vorgefertigte Visualisierungen geben einen ersten deskriptiven Einblick in die gängigsten CiviCRM-Datentypen
- Visualisierungen sind prinzipiell interaktiv und erlauben eine rudimentäre Filterung

#### Nachteile von Civisualize

- ohne tiefergehende technische Kenntnisse können keine eigenen Visualisierungen erstellt werden. Erfordert viel Zeit zur Einarbeitung.
- `d3.js` ist ein ziemlich komplex und die Lernkurve ist steil.[^note-civisualize]
- Visualisierungen können nicht als `png` o.ä. exportiert werden 
- Dashboards / Visualisierungen können nicht mit Externen geteilt werden
- keine Verknüpfung der Datentypen "out of the box" (Ausnahme: Spendentrends-Dashboard). 

[^note-civisualize]: Selbst die Entwickler*innen der Extension geben dies zu bedenken: "Be warned, d3 is awesome, but the learning curve is steep."

#### Fazit
Civisualize liefert einige potenziell hilfreiche Grafiken "out of the box" und macht diese zugänglich direkt in CiviCRM. Wenn diese vorgefertigten Visualisierungen hilfreich sind für einen ersten Einblick in die Daten für interne Nutzer*innen, kann eine Installation sinnvoll sein. Die Lernkurve, um eigene Datenvisualisierungen zu erstellen, ist zu steil - gerade für nicht-technische Nutzer\*innen - um einen Einsatz darüber hinaus zu rechtfertigen, außer es ist zwingend notwendig, dass Visualisierungen direkt in CiviCRM auffindbar sind. Civisualize ist kein Tool, welches eine einfache, zugängliche Analyse von Daten ermöglicht.


# Use-Case-spezifsche Extensions

Im Rahmen des Datenvorhabens haben wir uns auf CiviCRM-Komponenten und -Extensions konzentriert, die dediziert auf die Analyse und Visualisierung von Daten ausgelegt sind. Aber auch Extensions, die für spezifische Anwendungsfälle (z.B. Spender*innenanalyse, ...) erstellt wurden, haben z.T. Datenauswertungen und -visualisierungen an Bord. 
Wir freuen uns über [Hinweise](./../../5-ueber.md#beitragen) zu den Datenkapazitäten von "inhaltlichen" Extensions und nehmen sie gerne in die Liste auf. 


## Contact Categories
[📊 daten-visualisieren](./../../1-datenlebenszyklus.html#daten-visualisieren)

Die Extension [Contact Categories](https://lab.civicrm.org/extensions/contactcats) bietet die Möglichkeit, Kontakte nach Prioritätsgruppen zu kategorisieren. Prioritätsgruppen können eigenständig konfiguriert werden. 
**Datenanalyse und -visualisierung:** Als Datenvisualisierung steht ein [Flow-Chart](https://lab.civicrm.org/extensions/contactcats#reports--contact-category-flows) zur Verfügung, der die Übergänge von Kontakten zwischen den verschiedenen Kontaktkategorien visualisiert.