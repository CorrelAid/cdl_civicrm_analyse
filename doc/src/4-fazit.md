# Fazit

Durch die verstärkte Förderung von Open-Source-Lösungen wie CiviCRM, insb. durch die [Deutsche Stiftung für Engagement und Ehrenamt](https://www.deutsche-stiftung-engagement-und-ehrenamt.de/), ist die deutschsprachige CiviCRM-Community in den vergangenen Jahren noch aktiver und stärker geworden[^note-sfe]. Mehr und mehr Organisationen pflegen Daten in CiviCRM und wollen sie über das Management ihrer Arbeitsabläufe - sei es die Koordination von Ehrenamtlichen, die Pflege von Kontakten oder das Management von Spenden und Förderanträgen - hinaus nutzen.

In diesem Datenvorhaben haben wir uns der Frage gewidmet: Wie können zivilgesellschaftliche Akteur*innen CiviCRM-Daten analysieren und visualisieren? Unsere Recherchen und Experimente haben gezeigt, dass es **vielfältige Möglichkeiten gibt, um CiviCRM-Daten zu analysieren und zu visualisieren:** die Verwendung von internen Tools wie SearchKit und ChartKit, der Anschluss von BI-Tools wie Metabase, der Import von CiviCRM-Daten in Excel / Google Sheets, ETL-Pipelines oder verschiedene Lösungen in Python oder R. Wichtig ist: Alle Tools und Ansätze haben ihre Vor- und Nachteile - es gibt kein eindeutiges Richtig oder Falsch. **Die beste Lösung hängt von den Bedarfen, Anforderungen und Ressourcen der einzelnen Organisation ab**. 


## Konkrete Erkenntnisse und Empfehlungen



#### Datenanalyse und -visualisierung in CiviCRM ist möglich - eigene Erwartungen managen und Bedarfe realistisch einschätzen
CiviCRM ist primär ein CRM zur Organisation von Prozessen und Kontakten. Das bedeutet, dass CiviCRM-interne Tools zur Analyse und Visualisierung von Daten (verständlicherweise) nicht so flexibel, umfassend und mächtig sind wie dedizierte Tools. Die Implementation von CiviCRM-internen Tools und Workflows ist allerdings im Vergleich zur Verwendung von zusätzlichen Tools relativ niedrigschwellig und kosteneffizient umsetzbar. Die Beschränkung auf einen CiviCRM-internen Setup kann ausreichend sein, ...
- ... wenn es wichtig ist, dass Analysen und Visualisierungen direkt in CiviCRM verfügbar sind. 
- ... wenn die Zielgruppe der Analysen (z.B. ehrenamtlicher Vorstand) selbst Zugang zu CiviCRM hat und es selbstständig navigieren kann. 
- ... wenn Analysen und Visualisierungen nur punktuell (z.B. für einen Jahresbericht) benötigt werden und manuelle Prozesse (z.B. Exporte, einmalige Aufbereitung in Excel) keine große Belastung darstellen. 
- ... wenn Ansprüche an statistische Tiefe und Design der Visualisierungen eher niedrig sind (deskriptive Auswertungen, Kreuztabellen; geringe Anpassungen bei Visualisierungen)

➡️ Empfehlung: NPOs sollten ehrlich für sich evaluieren, wie viel, wie tiefgehend, wie oft und für wen sie ihre CiviCRM-Daten auswerten und visualisieren wollen, können und müssen.
Alle relevanten internen Stakeholder sollten in diesen Prozess miteinbezogen werden, um zu einem gemeinsamen Verständnis zu gelangen, ob die Möglichkeiten von CiviCRM "good enough"[^note-erwartungsmanagement] für alle sind. 

[^note-erwartungsmanagement]: Alle wollen tolle Datenvisualisierungen mit eigenen Farben und Schriftarten. Aber ist es der Aufwand - zeitlich, finanziell, ... - wirklich wert oder reicht doch die nicht ganz so schöne ChartKit-Grafik?

#### Potenziale von SearchKit noch nicht ausgeschöpft

[SearchKit](./3-tools/1-civicrm_intern/4-civicrm-searchkit-chartkit.md) hat ein großes Potenzial: sowohl für Analysen  direkt in CiviCRM, aber auch zur DSGVO-freundlichen Aggregation von personenbezogenen Daten vor einem Export der Ergebnisse in ein anderes Tool mithilfe der [CiviCRM API](./3-tools/1-civicrm_intern/3-civicrm-api.md). In unseren Gesprächen haben wir den Eindruck gewonnen, dass die Verwendung von SearchKit für viele Nutzer*innen leider noch nicht zugänglich genug ist.  Auch wenn Akteur\*innen konkrete Unterstützung in der Software-für-Engagierte Community finden können, fehlt an anfängerfreundlichen Schulungen und Materialien (insb. deutschsprachigen), die es nicht-technischen Nutzer\*innen ermöglicht, die hinter SearchKit liegenden SQL-Konzepte (Filter, Group-By, Summarize, Joins) und Datenstrukturen zu verstehen.

➡️ Empfehlung: NPOs, die viel mit CiviCRM arbeiten und ihre Daten mittelfristig in CiviCRM analysieren und aggregieren wollen (auch zur Weiterverwendung in anderen Tools), sollten in das Lernen von SearchKit investieren (z.B. [CiviCRM Academy](https://civicrm.com/academy/)). CiviCRM-Dienstleister*innen könnten offene Workshops und Schulungen für SearchKit anbieten. 

#### BI-Tools ermöglichen selbstbestimmteres Arbeiten mit Daten, sind falscher Fit für hochangepasste Visualisierungen

- BI-Tools für interne Steuerung und ggf. zur Kommunikation mit externen stakeholdern
    - Dienstleister sind erste ansprechpartner, da Integration ggf. vonnöten
- hoch spezialisierte  Visualisierungen einmalig in Tools wie Canva etc. 

➡️ Empfehlung: NPOs, die 


#### Die API eröffnet einen großen Lösungsraum - von hemdsärmligen Excel bis zur Datenpipeline 


➡️ Empfehlung:


#### Programmiersprachen sind mächtig und flexibel????




[^note-sfe]: Beispiel: [Software-für-Engagierte Forum](https://community.software-fuer-engagierte.de)


- CiviCRM Dienstleister sind sehr responsiv und bleiben erste Ansprechprsonen für größere Projekte. Klar jedoch auch, dass bei komplexeren Auswertungen dedizierte Data Science Expertise nöig ist 
- Python und R am flexibelsten 

Kompetenzaufbau und personelle Ressourcen


Unterstützungsstrukturen wie das Civic Data Lab und CorrelAId (und andere Data4Good Initaitiven wie AI for good) k¨ønnen helfen. 


