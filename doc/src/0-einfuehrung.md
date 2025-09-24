# Einführung

Kontakte, Spenden, Mitglieder oder Events managen, Kampagnen durchführen, mit den eigenen Zielgruppen kommunizieren oder Daten zur Wirkungsmessung erheben: immer mehr zivilgesellschaftliche Organisationen nutzen die Open Source Software [CiviCRM](https://civicrm.org/). CiviCRM ist flexibel und vielseitig einsetzbar in zivilgesellschaftlichen Organisationen. So sind für viele Mitarbeiter\*innen und Engagierte CiviCRM-Daten die Grundlage ihrer täglichen inhaltlichen Arbeit geworden. 

Doch **wie können zivilgesellschaftliche Akteur*innen in CiviCRM gesammelte Daten nutzen** - zur Fördermittelakquise, zur Berichterstattung, zur Wirkungsmessung, zur Verbesserung ihrer Prozesse oder zum organisationellen Lernen?
**Wie können CiviCRM-Daten ausgewertet, analysiert und visualisiert werden?**

Diese Fragen zu erkunden, war das Ziel eines internen Datenvorhabens, welches ein Team des [Civic Data Labs](https://civic-data.de) im Sommer 2025 durchgeführt hat. Ausgehend von Gesprächen und schriftlichen Austauschen mit zivilgesellschaftlichen Akteur*innen zu ihrer CiviCRM-Nutzung recherchierten Jonas Stettner und Leo Preu Tools und führten verschiedene technische Experimente durch, in denen sie Testdaten einer eigens eingerichteten CiviCRM-Instanz analysierten und visualisierten. 

Dieses Material dokumentiert die Ergebnisse dieses Datenvorhabens und skizziert **Use Cases, Ansätze, Experimente und Tools**. Es richtet sich vor allem an **Personen, die CiviCRM bereits nutzen und ihre CiviCRM Daten analysieren (wollen)**. Aber auch Personen, die überlegen, CiviCRM in ihrer Organisation einzuführen, oder die an Open Source Software oder gemeinwohlorientierter Datennutzung interessiert sind, sind herzlich willkommen, hier durchzustöbern. 

## Wie gehts weiter?

1. Zuerst betten wir die typischen Schritte bei der Auswertung von CiviCRM-Daten und potenziell hilfreiche Tools in den **["Datenlebenszyklus"](./datenlebenszyklus.md)** ein. 
2. **[Use Cases & Ansätze](./use_cases/0-index.md)**: Wie nutzt die Zivilgesellschaft CiviCRM? Welche Anwendungsfälle gibt es und wie können wir ihnen technologisch begegnen? 
3. In den Unterseiten geht es dann ins Details: Wir beschreiben unsere Experimente und Use Cases, die wir näher untersucht haben.
4. Die verwendeten CiviCRM-Komponenten und externen Tools beschreiben wir im **[Abschnitt Tools](./tools/index.md)**.
5. In der **[Executive Summary](./executive-summary.md)** fassen wir unsere Erkenntnisse zusammen.


## Limitationen des Datenvorhabens

CiviCRM ist ein mächtiges und komplexes Tool und **wir sind weder CiviCRM- noch Fundraising- oder CRM-Expert*innen**>. Deshalb kann es sein, dass uns vielversprechende Optionen aus dem Civi-Universum entgangen sind. Dies gilt v.a. für fachspezifische CiviCRM-Erweiterungen - wir hatten leider nicht die Zeit, um uns tiefergehend mit allen Anwendungsfällen (Fundraising, Freiwilligenmanagement, ...) und den dazugehörigen Erweiterungen auseinanderzusetzen. 

Unsere Experimente haben wir mit unserer <b>selbst gehosteten Basisinstallation</b> von CiviCRM 6.4.0. durchgeführt. Zwischen der Standalone-Version von CiviCRM und dessen Nutzung in Kombination mit CMS wie Drupal oder Wordpress gibt es Unterschiede. Auch Spezifika von Hosting-Anbietern (z.B. Systopia-eigene Extensions) konnten wir nicht berücksichtigen. Über <a href="./ueber.md#beitragen">Beiträge zu dieser Dokumentation<a> von Personen, die in diesen Bereichen mehr Ahnung haben, würden wir uns sehr freuen. 

In der Bearbeitung der Use Cases waren wir **inhaltlich beschränkt durch unsere [selbst erstellten Testdaten]()**. Wir hatten Kontakte, Spenden und Events, aber keine Aktivitäten wie Eventteilnahmen o.ä. 

## Hinweise zur Bedienung
Zur Navigation kann die Seitenleiste und/oder die Pfeile am Ende der Unterseiten verwendet werden. Mit der 🔍 Suchfunktion kann die Seite nach Begriffen durchsucht werden.