# Weitere CiviCRM Tools

## Reports/Berichte

## Civisualize
[📊 daten-visualisieren](./../datenlebenszyklus.html#daten-visualisieren)

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
Civisualize liefert einige potenziell hilfreiche Grafiken "out of the box" und macht diese zugänglich direkt in CiviCRM. Wenn diese vorgefertigten Visualisierungen hilfreich sind für einen ersten Einblick in die Daten für interne Nutzer*innen, kann eine Installation sinnvoll sein. Die Lernkurve, um eigene Datenvisualisierungen zu erstellen, ist zu steil - gerade für nicht-technische Nutzer\*innen -, um einen Einsatz darüber hinaus zu rechtfertigen, außer es ist zwingend notwendig, dass Visualisierungen direkt in CiviCRM auffindbar sind. Civisualize ist kein Tool, welches eine einfache, zugängliche Analyse von Daten ermöglicht.


## Spezifische Extensions

### Contact Categories

https://lab.civicrm.org/extensions/contactcats