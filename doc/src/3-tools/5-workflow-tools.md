# Workflow Automation Tools
[🔢 daten-auswerten](./../1-datenlebenszyklus.html#daten-auswerten)
[🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)<br>

Workflow Automation Tools sind browserbasierte Anwendungen, über die man einzelne Schritte, wie das Laden, Senden und Verarbeiten von Daten direkt miteinander verknüpfen und automatisieren kann. Viele Workflow Automation Tools sind dabei nicht auf Daten spezialisiert, sondern es lässt sich Beliebiges verknüpfen und automatisieren. Auf Daten bezogen lassen sich diese Tools auch dem Feld der **Data Orchestration** zuordnen. Wir legten jedoch den Fokus auf Tools, die primär über eine zugängliche graphische Nutzungsoberfläche funktionieren, was bei vielen dedizierten Data Orchestration Tools, die oft als Paket für Programmiersprachen wie Python existieren, oft nicht der Fall ist.

Gemeinsam ist diesen Tools, dass Aktionen in Schritten, oft Knoten genannt, durchgeführt werden. Knoten erhalten Inputs und produzieren Outputs, die wiederum zu Inputs eines anderen Knoten werden können. So entsteht sowohl mit Bezug auf die Reihenfolge der Ausführung, also auch mit Bezug auf den Fluss der Daten ein Pfad bzw. Flow. Ein verwandtes Konzept ist das des [DAG](https://en.wikipedia.org/wiki/Directed_acyclic_graph) (Directed acyclic graph). 

Workflow Automation Tools sind hilfreich, um Prozesse wie Datenexporte oder Verarbeitung nicht wiederholt zeitaufwendig manuell erledigen zu müssen. Gleichzeitig sind sie eine Alternative dazu, Automatisierungen komplett selbst zu programmieren. Somit sind sie zugänglicher für Daten-Anfänger:innen bzw. Menschen, die Skills in anderen Bereichen haben. Oft ist jedoch der Modus, dass man standardmäßig Flows mit Klicken baut, jedoch wenn man es für sinnvoll erachtet, in den Knoten mit Programmieren arbeiten kann.

Die folgende Tabelle zeigt eine unvollständige Übersicht (Stand 23.09.2025) über solche Tools und verdeutlicht deren Vielzahl.

| Name          | Website                                                                                                                | Vollständig OSS | Kostenloser Plan | SaaS-Preis ab (monatlich) | Komplexität Selbst-Hosting (1–10) | DSGVO-Hinweise SaaS                                                                                                                                    | Konfig. mit GUI | Konfig. mit Code | Git-basiert | Allgemeine Hinweise                                            |
|---------------|------------------------------------------------------------------------------------------------------------------------|-----------------|-----------------|---------------------------|-----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|------------------|-------------|----------------------------------------------------------------|
| Pipedream     | https://pipedream.com                                                                                                  | Nein            | Ja              | $49                       | –                                 | Unklar: [Privacy & Security (GDPR)](https://pipedream.com/docs/privacy-and-security#gdpr)                                                              | Ja              | Ja               | Nein        | KI-Pipeline-Builder-Assistent                                   |
| n8n           | https://n8n.io/                                                                                                        | Ja              | Nein            | $24                       | 3                                 | Azure in Frankfurt: [GDPR](https://docs.n8n.io/privacy-security/privacy/#gdpr)                                                                       | Ja              | Ja               | –           | –                                                              |
| Kestra        | https://kestra.io/                                                                                                     | Ja              | Nein            | Enterprise (unbekannt)    | 4                                 | –                                                                                                                                                      | Nein            | Ja               | Ja          | Komplex mit YAML für nicht-technische Anwender              |
| Zapier        | https://zapier.com/                                                                                                    | Nein            | –               | $30                       | –                                 | –                                                                                                                                                      | –               | –                | –           | –                                                              |
| Automatisch   | https://automatisch.io                                                                                                 | Ja              | Ja              | $20                       | –                                 | –                                                                                                                                                      | –               | –                | –           | Begrenzter SQL-Adapter (nur Postgres, wenige Funktionen)       |
| Make          | https://www.make.com                                                                                                   | Nein            | Ja              | $0 / $9                   | –                                 | AWS in der EU: [Make Sub-Processors (Juni 2025)](https://assets.ctfassets.net/un655fb9wln6/bAi9YXB2XP4fnAtZxkDOb/08a65fe743f91ec7026c07d3de2b8fc2/Make_Sub-Processors_June_2025.pdf) | –               | –                | –           | Auswählen, dass in EU gehostet                                 |
| KNIME         | https://www.knime.com                                                                                                  | Nein            | –               | –                         | –                                 | –                                                                                                                                                      | –               | –                | –           | –                                                              |
| Activepieces  | https://www.activepieces.com/                                                                                          | Ja              | Ja              | $25                       | –                                 | Keine Informationen gefunden                                                                                                                           | –               | –                | –           | –                                                              |
| Rudderstack   | https://www.rudderstack.com/                                                                                           | Ja              | –               | –                         | –                                 | –                                                                                                                                                      | –               | –                | –           | Wahrscheinlich zu vertriebsorientiert                          |


In diesem Projekt haben wir uns für das Testen von n8n und Kestra entschieden, da wir Priorität auf Open Source, die Möglichkeit zum [Self-Hosting]((./3-tools/self-hosting.md)) und ausreichende Funktionen für Data Orchestration legten. 

## n8n

[🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)

[Link zur Dokumentation](https://n8n.io/integrations/google-cloud/)

```admonish info title="Code-Beispiele für Kestra"
Im [Repository](https://github.com/CorrelAid/cdl_civicrm_analyse) findet ihr in dem Ordner `supporting_code/n8n_flows` Flows, die ihr in eure n8n-Instanz importieren könnt.
```

### Vorteile

- Intuitive Klick-Umgebung
- Große Community

### Nachteile

- Begrenzte Programmierumgebung


## Kestra

[🧹 daten-organisieren](./../1-datenlebenszyklus.html#daten-organisieren)

[Link zur Dokumentation](https://kestra.io/docs)

```admonish info title="Code-Beispiele für Kestra"
Im [Repository](https://github.com/CorrelAid/cdl_civicrm_analyse) findet ihr in dem Ordner `supporting_code/kestra_flows` Beispiel-Flows dafür, wie ihr Daten über die API oder die Datenbank laden und weitersenden könnt.
```

### Vorteile

- Quasi unbegrenzte Möglichkeiten und viele Wege ein Problem zu lösen
- Flows liegen als Datei (yaml) vor und können so leicht persistiert werden

### Nachteile

- Unbekannter als andere Tools
- Viele Probleme lassen sich nur mit Programmieren lösen
- Umständlich, Änderungen in Flows zu testen





