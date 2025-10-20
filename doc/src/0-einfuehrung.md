# Einführung

Kontakte, Spenden, Mitglieder oder Events managen, Kampagnen durchführen, mit den eigenen Zielgruppen kommunizieren oder Daten zur Wirkungsmessung erheben: immer mehr zivilgesellschaftliche Organisationen nutzen die Open Source Software [CiviCRM](https://civicrm.org/). CiviCRM ist flexibel und vielseitig einsetzbar in zivilgesellschaftlichen Organisationen. So sind für viele Mitarbeiter\*innen und Engagierte CiviCRM-Daten die Grundlage ihrer täglichen inhaltlichen Arbeit geworden. 

Doch **wie können zivilgesellschaftliche Akteur*innen in CiviCRM gesammelte Daten nutzen** - zur Fördermittelakquise, zur Berichterstattung, zur Wirkungsmessung, zur Verbesserung ihrer Prozesse oder zum organisationellen Lernen?
**Wie können CiviCRM-Daten ausgewertet, analysiert und visualisiert werden?**

Diese Fragen zu erkunden, war das Ziel eines internen Datenvorhabens, welches ein Team des [Civic Data Labs](https://civic-data.de) im Sommer 2025 durchgeführt hat. Ausgehend von Gesprächen und schriftlichen Austauschen mit zivilgesellschaftlichen Akteur*innen zu ihrer CiviCRM-Nutzung recherchierten Jonas Stettner und Leo Preu Tools und führten verschiedene technische Experimente durch, in denen sie Testdaten einer eigens eingerichteten CiviCRM-Instanz analysierten und visualisierten. 

Dieses Material dokumentiert die Ergebnisse dieses Datenvorhabens und skizziert **Use Cases, Ansätze, Experimente und Tools**. Es richtet sich vor allem an **Personen, die CiviCRM bereits nutzen und ihre CiviCRM Daten analysieren (wollen)**. Aber auch Personen, die überlegen, CiviCRM in ihrer Organisation einzuführen, oder die an Open Source Software oder gemeinwohlorientierter Datennutzung interessiert sind, sind herzlich willkommen, hier durchzustöbern. 

## Wie gehts weiter?

1. Zuerst betten wir die typischen Schritte bei der Auswertung von CiviCRM-Daten und potenziell hilfreiche Tools in den **["Datenlebenszyklus"](./1-datenlebenszyklus.md)** ein. 
2. **[Use Cases & Ansätze](./2-use_cases/0-index.md)**: Wie nutzt die Zivilgesellschaft CiviCRM? Welche Anwendungsfälle gibt es und wie können wir ihnen technologisch begegnen? 
3. In den Unterseiten geht es dann ins Details: Wir beschreiben unsere Experimente und Use Cases, die wir näher untersucht haben.
4. Die verwendeten CiviCRM-Komponenten und externen Tools beschreiben wir im **[Abschnitt Tools](./3-tools/0-index.md)**.
5. Im **[Fazit](./2-fazit.md)** fassen wir unsere Erkenntnisse zusammen.


## Limitationen des Datenvorhabens

CiviCRM ist ein mächtiges und komplexes Tool und **wir sind weder CiviCRM- noch Fundraising- oder CRM-Expert*innen**. Deshalb kann es sein, dass uns vielversprechende Optionen aus dem Civi-Universum entgangen sind. Dies gilt v.a. für fachspezifische CiviCRM-Erweiterungen - wir hatten leider nicht die Zeit, um uns tiefergehend mit allen Anwendungsfällen (Fundraising, Freiwilligenmanagement, ...) und den dazugehörigen Erweiterungen auseinanderzusetzen. 

Unsere Experimente haben wir mit unserer <b>selbst gehosteten Basisinstallation</b> von CiviCRM 6.4.0. durchgeführt. Zwischen der Standalone-Version von CiviCRM und dessen Nutzung in Kombination mit CMS wie Drupal oder Wordpress gibt es Unterschiede. Auch Spezifika von Hosting-Anbietern (z.B. Systopia-eigene Extensions) konnten wir nicht berücksichtigen. Über <a href="./3-ueber.md#beitragen">Beiträge zu dieser Dokumentation<a> von Personen, die in diesen Bereichen mehr Ahnung haben, würden wir uns sehr freuen. 

In der Bearbeitung der Use Cases waren wir **inhaltlich beschränkt durch unsere [selbst erstellten Testdaten](https://github.com/CorrelAid/cdl_civicrm_analyse/tree/main/supporting_code/test_data)**. Wir hatten Kontakte und Zuwendungen, aber keine Events oder Aktivitäten wie Eventteilnahmen o.ä. 

## Hinweise zur Bedienung & zur Kennzeichnung
Zur Navigation kann die Seitenleiste und/oder die Pfeile am Ende der Unterseiten verwendet werden. Mit der 🔍 Suchfunktion kann die Seite nach Begriffen durchsucht werden.

Die Inhalte dieser Seite wurden von Jonas Stettner und Leo Preu (beide [CorrelAid e.V.](https://correlaid.org), tätig im [Civic Data Lab](https://civic-data.de)) erstellt. Zum Teil haben LLMs die beiden bei der Recherche, Übersetzung und Formulierung unterstützt. Wenn signifikante Teile von Seiten oder Sektionen von LLMs geschrieben sind, haben wir dies separat gekennzeichnet. Alle LLM-generierten Inhalte wurden durch uns inhaltlich überprüft.
