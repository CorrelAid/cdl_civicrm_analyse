# Fazit

Durch die verstärkte Förderung von Open-Source-Lösungen wie CiviCRM, insb. durch die [Deutsche Stiftung für Engagement und Ehrenamt](https://www.deutsche-stiftung-engagement-und-ehrenamt.de/), ist die deutschsprachige CiviCRM-Community in den vergangenen Jahren noch aktiver und stärker geworden[^note-sfe]. Mehr und mehr Organisationen pflegen Daten in CiviCRM und wollen sie über das Management ihrer Arbeitsabläufe - sei es die Koordination von Ehrenamtlichen, die Pflege von Kontakten oder das Management von Spenden und Förderanträgen - hinaus nutzen.

In diesem Datenvorhaben haben wir uns der Frage gewidmet: Wie können zivilgesellschaftliche Akteur*innen CiviCRM-Daten analysieren und visualisieren? Unsere Recherchen und Experimente haben gezeigt, dass es **vielfältige Möglichkeiten gibt, um CiviCRM-Daten zu analysieren und zu visualisieren:** die Verwendung von internen Tools wie SearchKit und ChartKit, der Anschluss von BI-Tools wie Metabase, der Import von CiviCRM-Daten in Excel / Google Sheets, ETL-Pipelines oder verschiedene Lösungen in Python oder R. Wichtig ist: Alle Tools und Ansätze haben ihre Vor- und Nachteile - es gibt kein eindeutiges Richtig oder Falsch. **Die beste Lösung hängt von den Bedarfen, Anforderungen und Ressourcen der einzelnen Organisation ab**. 


## Erkenntnisse und Empfehlungen



### Datenanalyse und -visualisierung in CiviCRM ist möglich - eigene Erwartungen managen und Bedarfe realistisch einschätzen {#civicrm-tools}
CiviCRM ist primär ein CRM zur Organisation von Prozessen und Kontakten. Das bedeutet, dass [CiviCRM-interne Tools](./3-tools/1-civicrm_intern/0-index.md) zur Analyse und Visualisierung von Daten **(verständlicherweise) nicht so flexibel, umfassend und mächtig sind wie dedizierte Tools**. 
Die Implementation von CiviCRM-internen Tools und Workflows ist allerdings im Vergleich zur Verwendung von zusätzlichen Tools **relativ niedrigschwellig und kosteneffizient umsetzbar**. Die Beschränkung auf einen CiviCRM-internen Setup kann ausreichend sein, ...
- ... wenn es wichtig ist, dass Analysen und Visualisierungen direkt in CiviCRM verfügbar sind. 
- ... wenn die Zielgruppe der Analysen (z.B. ehrenamtlicher Vorstand) selbst Zugang zu CiviCRM hat und es selbstständig navigieren kann. 
- ... wenn Analysen und Visualisierungen nur punktuell (z.B. für einen Jahresbericht) benötigt werden und manuelle Prozesse (z.B. Exporte, einmalige Aufbereitung in Excel) keine große Belastung darstellen. 
- ... wenn Ansprüche an statistische Tiefe und Design der Visualisierungen eher niedrig sind (deskriptive Auswertungen, Kreuztabellen; geringe Anpassungen bei Visualisierungen)

**➡️ Empfehlung:** NPOs sollten ehrlich für sich evaluieren, wie viel, wie tiefgehend, wie oft und für wen sie ihre CiviCRM-Daten auswerten und visualisieren wollen, können und müssen.
Alle relevanten internen Stakeholder sollten in diesen Prozess miteinbezogen werden, um zu einem gemeinsamen Verständnis zu gelangen, ob die Möglichkeiten von CiviCRM "good enough"[^note-erwartungsmanagement] für alle sind. 

[^note-erwartungsmanagement]: Alle wollen tolle Datenvisualisierungen mit eigenen Farben und Schriftarten. Aber ist es der Aufwand - zeitlich, finanziell, ... - wirklich wert oder reicht doch die nicht ganz so schöne ChartKit-Grafik?

### Potenziale von SearchKit noch nicht ausgeschöpft {#searchkit-potenziale}

**[SearchKit](./3-tools/1-civicrm_intern/4-civicrm-searchkit-chartkit.md) hat ein großes Potenzial**: 
sowohl für Analysen  direkt in CiviCRM, aber auch zur DSGVO-freundlichen Aggregation von personenbezogenen Daten vor einem Export 
der Ergebnisse in ein anderes Tool mithilfe der [CiviCRM API](./3-tools/1-civicrm_intern/3-civicrm-api.md). In unseren Gesprächen haben wir den Eindruck gewonnen, dass die **Verwendung von SearchKit für viele Nutzer*innen leider noch nicht zugänglich genug** ist.  Auch wenn Akteur\*innen konkrete Unterstützung in der Software-für-Engagierte Community finden können, fehlt an anfängerfreundlichen Schulungen und Materialien (insb. deutschsprachigen), die es nicht-technischen Nutzer\*innen ermöglicht, die hinter SearchKit liegenden SQL-Konzepte (Filter, Group-By, Summarize, Joins) und Datenstrukturen zu verstehen.

**➡️ Empfehlung**: NPOs, die viel mit CiviCRM arbeiten und ihre Daten mittelfristig in CiviCRM analysieren und aggregieren wollen (auch zur Weiterverwendung in anderen Tools), sollten in das Lernen von SearchKit und ChartKit investieren (z.B. [CiviCRM Academy](https://civicrm.com/academy/)). CiviCRM-Dienstleister*innen könnten offene Workshops und Schulungen für SearchKit anbieten. Die strukturierte Aufarbeitung von Wissen durch die CiviCRM-Community selbst sollte gefördert werden, um Kompetenzen zur eigenständigen Analyse von Daten in CiviCRM zugänglich zu machen.

### BI-Tools ermöglichen selbstbestimmteres Analysieren und Visualisieren von Daten, sind aber keine Allzwecklösung {#bi-tools}

Der Einsatz von [Business-Intelligence-(BI)-Tools](./3-tools/3-bi-tools.md) erlaubt es Nutzer\*innen, Daten aus CiviCRM mit anderen Daten zu verknüpfen und sich **eigenständig, agil und kontinuierlich** verschiedene Analysen, 
Visualisierungen und Dashboards zu erarbeiten, die **visuell ansprechender, interaktiver und analytisch tiefergehender** sind als bei ChartKit & Co.

Dennoch ist ein BI-Tool keine Allzwecklösung: Bei komplexen statistischen Analysen oder sehr spezifischen Visualisierungsbedarfen (z.B. Data Storytelling für einen Pitch) stoßen sie an ihre Grenzen. Hier kann ein spezialisiertes Visualisierungstool eine gute Ergänzung sein. Auch gibt es je nach Tool und Pricing-Modell Einschränkungen im Funktionsumfang. 

**➡️ Empfehlung**: NPOs, für die Daten und deren Analyse einen hohen strategischen Stellenwert für die eigene Steuerung und Organisationsentwicklung hat 
und bei denen Personen regelmäßig und eigenständig Daten analysieren und visualisieren, sollten sich mit BI-Tools auseinandersetzen. Individuelle Kompetenzen und Arbeitsgewohnheiten 
sowie Anforderungen und Zielgruppen der konkreten Auswertungen sind entscheidend dafür, ob ein BI-Tool gut zu den Bedarfen passt.

```admonish info "CiviCRM-Dienstleister erster Anlaufpunkt"
Die Integration von CiviCRM und BI-Tools erfordert in der Regel technisches Know-how und den Anschluss eurer CiviCRM-Daten. Die CiviCRM-Dienstleister, mit denen wir sprechen konnten (civilisten, flyingcivi), zeigten sich hier offen und erfahren in ähnlichen Projekten. Für den Betrieb eines BI-Tools müssen jedoch finanzielle Ressourcen (z.B. für Lizenzen oder Server) und zeitliche Kapazitäten für Kompetenzaufbau vorhanden sein.
```

### Die CiviCRM-API eröffnet einen großen Lösungsraum – erfordert allerdings technisches Verständnis {#api}

**Die [CiviCRM-API](./3-tools/1-civicrm_intern/3-civicrm-api.md) eröffnet viele Möglichkeiten, um Daten zu exportieren, zu verknüpfen oder automatisiert weiterzuverarbeiten**. Vielversprechend erscheint der [Import von CiviCRM-Daten in Tabellenkalkulationsprogramme](./2-ansaetze/2-searchkit-tabellenkalkulation.md) wie Excel und Google Sheets, sollte jedoch bedacht eingesetzt werden.
[Grafische Schnittstellen-Tools (GUI-Tools)](./2-ansaetze/4-api_db_wf_mtbs/1-etl-n8n.md) machen API-basierte Prozesse zugänglicher. Besonders leistungsfähig sind Lösungen mit [Python oder R](./3-tools/6-python-und-r.md). Diese setzen jedoch eine gewisse IT-Infrastruktur und Wartungskompetenzen und -kapazitäten voraus, um langfristig Wirkung zu entfalten.

Für alle Nutzungsszenarien ist ein grundlegendes Verständnis von APIs, Datenstrukturen und Datenflüssen notwendig. Auch Fragen in Bezug auf Datenschutz und Datensicherheit sind von zentraler Bedeutung.

**➡️ Empfehlung**: Akteur*innen, die viel Zeit in manuellen Export- und Importprozessen von/zu Excel & Co. verlieren, können prüfen, ob sie diese mithilfe der API punktuell selbst automatisieren können. Hier gibt es Potenzial für erste kleinere "Quick Wins".
Auch für umfassendere, dauerhafte Datenintegrationen von CiviCRM-Daten ist die API der "Schlüssel"
 – hier sollten Organisationen jedoch strategisch und strukturiert vorgehen: sich selbst einarbeiten[^note-slm], Projekte gut planen[^note-material] und Zugang zur nötigen Expertise sicherstellen.

[^note-material]: z.B. mit unserer [interaktiven Planungshilfe für Datenvorhaben](https://miro.com/app/board/uXjVN1pSbhE=/?share_link_id=720311890664)
[^note-sfe]: Beispiel: [Software-für-Engagierte Forum](https://community.software-fuer-engagierte.de)
[^note-slm]: Erklärungen von Begriffen wie API, Server etc. gibt es im [Selbstlernmaterial des Civic Data Labs](https://civic-data.de/selbstlernmaterial/)


### Nutzer*innen nicht alleine lassen

Die Analyse und Visualisierung von CiviCRM-Daten ist kein triviales Unterfangen und erfordert die Auseinandersetzung mit strategisch-organisatorischen Fragestellungen und z.T. die Einarbeitung in (neue) technische Konzepte und Tools. 
Das ist für viele Organisationen eine Herausforderung – meist fehlt es an Zeit, Personal, Geld oder technischer Unterstützung.
Mit diesem Material wollten wir zeigen, welche Wege und Tools es gibt, um CiviCRM-Daten besser zu nutzen. Unterstützungsstrukturen wie das [Civic Data Lab](https://community.civic-data.de), [CorrelAid](https://correlaid.org) oder die [Software-für-Engagierte-Community](https://community.software-fuer-engagierte.de/) sind essenzielle Anlaufpunkte um Wissen zu teilen und gemeinsam erste Schritte zu gehen.


```admonish info "Ihr habt Fragen, Ideen, Feedback?"
Kommt gerne in unsere [Datensprechstunde](https://zeeg.me/correlaid/dss-cdl) oder [schreibt uns eine Mail](mailto:jonas.s@correlaid.org)!
```
