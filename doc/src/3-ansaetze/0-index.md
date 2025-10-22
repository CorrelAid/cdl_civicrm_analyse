# Ansätze: Toolkombinationen

Um Daten in CiviCRM zu analysieren anzugehen, lassen sich fast immer mehrerer Lösungen finden. Es gibt kein „richtig“ oder „falsch“ – **entscheidend ist, welche Tools und Methoden für euch am besten funktionieren**.

Grundsätzlich könnt ihr unterscheiden, welche Schritte des Datenlebenszyklus ihr in CiviCRM und/oder extern abbildet:

- **Alle Schritte in CiviCRM** umsetzen (von Datenorganisation bis zur Datenvisualisierung).
- **Daten organisieren und auswerten** mithilfe von CiviCRM, **Visualisierung und Kommunikation** mit externen Tools.
- **Nur Datenorganisation in CiviCRM**, Auswertung, Visualisierung und Kommunikation mit externen Tools.
- **Daten extern organisieren** (z. B. in einer zusätzlichen Datenbank oder einem ETL-Tool), Auswertung und Visualisierung ebenfalls extern.


```admonish info title="CiviCRM ≠ Datenanalysetool"
Generell gilt: CiviCRM ist **primär ein CRM**, kein Datenanalyse- oder Visualisierungstool. **Je höher eure Anforderungen an die Auswertung** sind, **desto eher solltet ihr externe Tools** hinzuziehen.
```


Darüber hinaus hängt die **Wahl des Ansatzes von folgenden Faktoren** ab:

- Finanzielle Ressourcen eurer Organisation
- Bestehende technische Infrastruktur
- Vorhandene Fähigkeiten sowie Bereitschaft und Zeit, Neues zu erlernen
- Zielgruppe der Auswertung: interne Nutzung oder externe Stakeholder?
- Anforderungen an die Auswertungsergebnisse: Format, Design etc.
- Flexibilität: Soll explorativ gearbeitet oder nur eine festgelegte Auswertung durchgeführt werden?

Wir beschreiben **Vor- und Nachteile der Tools und Ansätze**, um euch bei der Entscheidung zu unterstützen – damit ihr eure CiviCRM-Daten bestmöglich auswerten könnt.

## Aufbau dieses Kapitels

```admonish info title="Sortierung"
Bei der Sortierung der nachfolgenden Unterseiten haben wir die Ansätze nach Komplexität im Sinne von Menge an benötigten technischen Kenntnissen und Komponenten geordnet. 
```

CiviCRM ist mit einer eigenen Datenbank verbunden, in der Daten zu Entitäten wie Kontakten gespeichert sind. Der am wenigsten komplexe Ansatz ist der direkt Anschluss eines Tools wie Metabase an diese Datenbank wie hier beschrieben.

[TODO]

Der Kategorie von Ansätzen, die am meisten der in der Disziplin des Data Engineering verbreiteten **ETL-Prozessen** (Extract, Transform & Load) gleichen, haben wir dabei mit einer eigenen Erklärungsseite ausgestattet.
