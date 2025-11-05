# Fazit

Durch die verstärkte Förderung von Open-Source-Lösungen wie CiviCRM, insb. durch die [Deutsche Stiftung für Engagement und Ehrenamt](https://www.deutsche-stiftung-engagement-und-ehrenamt.de/), ist die deutschsprachige CiviCRM-Community in den vergangenen Jahren noch aktiver und stärker geworden[^note-sfe]. Mehr und mehr Organisationen pflegen Daten in CiviCRM und wollen sie über das Management ihrer Arbeitsabläufe - sei es die Koordination von Ehrenamtlichen, die Pflege von Kontakten oder das Management von Spenden und Förderanträgen - hinaus nutzen.

In diesem Datenvorhaben haben wir uns der Frage gewidmet: Wie können zivilgesellschaftliche Akteur*innen CiviCRM-Daten analysieren und visualisieren? Unsere Recherchen und Experimente haben gezeigt, dass es **vielfältige Möglichkeiten gibt, um CiviCRM-Daten zu analysieren und zu visualisieren:** die Verwendung von internen Tools wie SearchKit und ChartKit, der Anschluss von BI-Tools wie Metabase, der Import von CiviCRM-Daten in Excel / Google Sheets, ETL-Pipelines oder verschiedene Lösungen in Python oder R. Wichtig ist: Alle Tools und Ansätze haben ihre Vor- und Nachteile - es gibt kein eindeutiges Richtig oder Falsch. **Die beste Lösung hängt von den Bedarfen, Anforderungen und Ressourcen der einzelnen Organisation ab**. 


## Erkenntnisse und Empfehlungen



#### Datenanalyse und -visualisierung in CiviCRM ist möglich - eigene Erwartungen managen und Bedarfe realistisch einschätzen
CiviCRM ist primär ein CRM zur Organisation von Prozessen und Kontakten. Das bedeutet, dass CiviCRM-interne Tools zur Analyse und Visualisierung von Daten **(verständlicherweise) nicht so flexibel, umfassend und mächtig sind wie dedizierte Tools**. 
Die Implementation von CiviCRM-internen Tools und Workflows ist allerdings im Vergleich zur Verwendung von zusätzlichen Tools **relativ niedrigschwellig und kosteneffizient umsetzbar**. Die Beschränkung auf einen CiviCRM-internen Setup kann ausreichend sein, ...
- ... wenn es wichtig ist, dass Analysen und Visualisierungen direkt in CiviCRM verfügbar sind. 
- ... wenn die Zielgruppe der Analysen (z.B. ehrenamtlicher Vorstand) selbst Zugang zu CiviCRM hat und es selbstständig navigieren kann. 
- ... wenn Analysen und Visualisierungen nur punktuell (z.B. für einen Jahresbericht) benötigt werden und manuelle Prozesse (z.B. Exporte, einmalige Aufbereitung in Excel) keine große Belastung darstellen. 
- ... wenn Ansprüche an statistische Tiefe und Design der Visualisierungen eher niedrig sind (deskriptive Auswertungen, Kreuztabellen; geringe Anpassungen bei Visualisierungen)

**➡️ Empfehlung:** NPOs sollten ehrlich für sich evaluieren, wie viel, wie tiefgehend, wie oft und für wen sie ihre CiviCRM-Daten auswerten und visualisieren wollen, können und müssen**.
Alle relevanten internen Stakeholder sollten in diesen Prozess miteinbezogen werden, um zu einem gemeinsamen Verständnis zu gelangen, ob die Möglichkeiten von CiviCRM "good enough"[^note-erwartungsmanagement] für alle sind. 

[^note-erwartungsmanagement]: Alle wollen tolle Datenvisualisierungen mit eigenen Farben und Schriftarten. Aber ist es der Aufwand - zeitlich, finanziell, ... - wirklich wert oder reicht doch die nicht ganz so schöne ChartKit-Grafik?

#### Potenziale von SearchKit noch nicht ausgeschöpft

**[SearchKit](./3-tools/1-civicrm_intern/4-civicrm-searchkit-chartkit.md) hat ein großes Potenzial**: 
sowohl für Analysen  direkt in CiviCRM, aber auch zur DSGVO-freundlichen Aggregation von personenbezogenen Daten vor einem Export 
der Ergebnisse in ein anderes Tool mithilfe der [CiviCRM API](./3-tools/1-civicrm_intern/3-civicrm-api.md). In unseren Gesprächen haben wir den Eindruck gewonnen, dass die **Verwendung von SearchKit für viele Nutzer*innen leider noch nicht zugänglich genug** ist.  Auch wenn Akteur\*innen konkrete Unterstützung in der Software-für-Engagierte Community finden können, fehlt an anfängerfreundlichen Schulungen und Materialien (insb. deutschsprachigen), die es nicht-technischen Nutzer\*innen ermöglicht, die hinter SearchKit liegenden SQL-Konzepte (Filter, Group-By, Summarize, Joins) und Datenstrukturen zu verstehen.

**➡️ Empfehlung**: NPOs, die viel mit CiviCRM arbeiten und ihre Daten mittelfristig in CiviCRM analysieren und aggregieren wollen (auch zur Weiterverwendung in anderen Tools), sollten in das Lernen von SearchKit investieren (z.B. [CiviCRM Academy](https://civicrm.com/academy/)). CiviCRM-Dienstleister*innen könnten offene Workshops und Schulungen für SearchKit anbieten. 

#### BI-Tools ermöglichen selbstbestimmteres Analysieren und Visualisieren von Daten, sind aber keine Allzwecklösung

Der Einsatz von [Business-Intelligence-(BI)-Tools](./3-tools/3-bi-tools.md) erlaubt es Nutzer\*innen, Daten aus CiviCRM mit anderen Daten zu verknüpfen und sich **eigenständig, agil und kontinuierlich** verschiedene Analysen, 
Visualisierungen und Dashboards zu erarbeiten, die **visuell ansprechender, interaktiver und analytisch tiefergehender** sind als bei ChartKit & Co.

Dennoch ist ein BI-Tool keine Allzwecklösung: Bei komplexen statistischen Analysen oder sehr spezifischen Visualisierungsbedarfen (z.B. Data Storytelling für einen Pitch) stoßen sie an ihre Grenzen. Hier kann ein spezialisiertes Visualisierungstool eine gute Ergänzung sein. Auch gibt es je nach Tool und Pricing-Modell Einschränkungen im Funktionsumfang. 

**➡️ Empfehlung**: NPOs, für die Daten und deren Analyse einen hohen strategischen Stellenwert für die eigene Steuerung und Organisationsentwicklung hat 
und bei denen Personen regelmäßig und eigenständig Daten analysieren und visualisieren, sollten sich mit BI-Tools auseinandersetzen. Individuelle Kompetenzen und Arbeitsgewohnheiten 
sowie Anforderungen und Zielgruppen der konkreten Auswertungen sind entscheidend dafür, ob ein BI-Tool gut zu den Bedarfen passt.

```admonish info "CiviCRM-Dienstleister erster Anlaufpunkt"
Die Integration von CiviCRM und BI-Tools erfordert in der Regel technisches Know-how und den Anschluss eurer CiviCRM-Daten. Die CiviCRM-Dienstleister, mit denen wir sprechen konnten (civilisten, flyingcivi), zeigten sich hier offen und erfahren in ähnlichen Projekten. Für den Betrieb eines BI-Tools müssen jedoch finanzielle Ressourcen (z.B. für Lizenzen oder Server) und zeitliche Kapazitäten für Kompetenzaufbau vorhanden sein.
```

-----

Wer soll welche Daten und Auswertungen erhalten?

Wer profitiert von den Informationen?

Welche Erwartungen und Kompetenzen hat die Zielgruppe?

Welches Ziel wird mit den Visualisierungen verfolgt (informieren, überzeugen, steuern)?

Nur wenn diese Fragen geklärt sind, kann entschieden werden, ob der Aufbau eines BI-Tools die passende Lösung ist.

#### BI-Tools ermöglichen selbstbestimmteres Analysieren und Visualisieren von Daten

BI Tools bieten
- self-service analyse und visualisierungen: BI Tool ermächtigt Mitarbeiter*innen, deren Arbeit mit daten signifikanter und wiederkehrender Teil der Arbeit ist, z.B. für Wirkungsmanager:innen. 
- kombination mit anderen daten

- BI-Tools stark/gut für interne Steuerung und Transparenz und ggf. zur Kommunikation mit externen stakeholdern auf arbeitsebene. 
    - more customizable als bei civicrm, aber dennoch toolspezifische einschränkungen. hängt auch vom Plan / Pricing ab inwiefern z.b. designs angepasst werden kåönnen. 
    - hoch spezialisierte  Visualisierungen (z>B social media oder high-stakes Kontakte/Kontexte wie z.B> pitches) ggf. lieber einmalig in spezialisierten Visualisierungstools  etc. -> hier dann BI-Tools nützlich um Daten zu aggregieren und vorzuanalyseirren. 

- Dienstleister sind erste ansprechpartner für aufsetzen eines BI-Tools, da Integration ggf. vonnöten. Die Dienstleister mit denen wir spreche konnten (civilsiten, flyingcivi) waren hier gesprächsbereit und haben bereits ähnliche Projekte mit Kund*innen durchgeführt.
-  Finanzielle Ressourcen für Server- und/oder Lizenzkosten müssen allerdings vorhanden sein. 
- wenn solche schon genutzt werden, bietet es sich an, CiviCRM Daten anzuschließen. Der Aufbau eines BI-Tools sollte gut abgewogen werden und erfodert neben Finanziellen Ressou;rcen auch KOmpetenzaufbau von Mitarbeiter\*innen.

Empfehlung: NPOs, bei denen die ARbeit mit daten perspektivisch einen hohen strategischen wert für die Steuerung und Entwicklung der Organisation hat, sodass sogar eigene Teams / Personen damit befasst sind,  sollte sich mit BI-Tools befassen. Es ist besonders wichtig, die Bedarfe zu identifizieren und genau zu reflektieren, ob ein BI-Tool die Ansprüche erfüllen kann: wer soll welche Daten und Auswertungen erhalten? Wer kann von Informationen profitieren? was sind die Erwartungen und Kompetenzen der Zielgruppe? Welches Ziel wird verfolgt (überzeugen, informieren, ...)? 


#### Die CiviCRM-API eröffnet einen großen Lösungsraum - erfordert allerdings Verständnis von technischen Zusammenhängen
- API eröffenet Range von Lösungen: "hacky" Excel-Importen bis hin zu technisch anspruchsvolleren SEtups aus dem Bereich des Data Engeineering. Letztere erfordern Maintainance und damit verbunden Kompetenzen
- Gui pipeline tools sind zugänglicher als programmatische tools . trotzdem müssen Konzepte wie API und Datenstrukturen verstanden werden. 
- wo sendet man Daten hin? Datenschutz, Datensicherheit, Datenflüsse...
- with great api access comes great responsibility 
- Programmiersprachen wie Python und R sind am flexibelsten. ein investment in kompetenzaufbau kann lohnen, allerdings nur, wenn grundlegende IT-Infrstruktur bereits da ist. sonst wird deployment und wartung von entstandenen Lösungen zur Hürde.
- Je mehr Tools, desto mehr maintainance aufwand. Deswegen genau abwägen
- CiviCRM Dienstleister sind sehr responsiv und bleiben erste Ansprechprsonen für größere Projekte. Klar jedoch auch, dass bei komplexeren Auswertungen dedizierte Data Science Expertise nöig ist 

- Selbstlernmaterial 

➡️ Empfehlung: wenn man bisher manuelle Exportschritte gemacht hat , dann kann man sich angucken ob man mithilfe der api diese _punktuell_ ersetzen kann. Hier können Lösungen wie mit PowerQuery oder Apps Script niedrigschwellige "Quick wins" sein. die API spielt ausserdem eine zentrale rolle für größere
Daten-infrastrukturpläne rund um civicrm herum -> dafür dann aber auch umfassendere IT- und Datenkompetenzen und Kapazitäten nötig. 


[^note-sfe]: Beispiel: [Software-für-Engagierte Forum](https://community.software-fuer-engagierte.de)



#### Nutzer*innen nicht alleine lassen

- Datenanalyse und visualiseirung von civicrm daten bleibt aufgrund von stets eingeschränkten zeitlichen und personellen Kapazitäten eine große Herausforderung für viele Zivilgesellschalitche ORganisationen.
- wir konnten hoffentlichmmit diesem Material den Raum von Möglichkeiten und Tools ausleuchten und  und konkrete Lösungsansätze skizzieren
- Unterstützungsstrukturen wie das Civic Data Lab und CorrelAId (und andere Data4Good Initaitiven wie AI for good) k¨ønnen helfen. 
- bestehende Community toll, viel Wissen in Köpfen -> Förderung von strukturierteren Wissenteilen.   (auch außerhalb von Events). gerne kann man hier beitragen.



- komm tin die datensprechstunde wenn ihr fragen, anregungen oder ergänzungen zum amterial habt: https://zeeg.me/correlaid/dss-cdl Wir freuen uns auf euch!




#### Die CiviCRM-API eröffnet einen großen Lösungsraum – erfordert allerdings technisches Verständnis

Die CiviCRM-API bietet vielfältige Möglichkeiten, um Daten aus CiviCRM zu extrahieren, zu transformieren und in anderen Anwendungen weiterzuverarbeiten – von einfachen, automatisierten Excel-Imports bis hin zu komplexen Data-Engineering-Setups mit ETL-Prozessen. Diese Bandbreite eröffnet enorme Flexibilität, bringt jedoch auch Anforderungen an technisches Verständnis, Wartung und Datensicherheit mit sich.

Grafische Schnittstellen-Tools (GUI-Tools) machen API-basierte Prozesse zugänglicher, dennoch ist ein grundlegendes Verständnis von APIs, Datenstrukturen und Datenflüssen notwendig. Besonders wichtig sind dabei Fragen wie: Wohin werden Daten übertragen? Welche datenschutzrechtlichen Anforderungen gelten? Wie werden Daten gesichert?
Mit großem API-Zugang kommt auch große Verantwortung.

Die programmatische Nutzung der API – etwa über Python oder R – ermöglicht die flexibelsten und mächtigsten Lösungen. Dieses Potenzial kann sich aber nur entfalten, wenn bereits eine gewisse IT-Infrastruktur und Datenkompetenz vorhanden ist. Andernfalls können Wartung, Deployment und Stabilität schnell zur Hürde werden.

Je mehr Tools in einer Dateninfrastruktur verbunden sind, desto größer wird der Aufwand für Pflege und Koordination – insbesondere bei Personalwechseln. Auch hier bleiben CiviCRM-Dienstleister wichtige Ansprechpartner, insbesondere bei der Planung größerer Integrationsprojekte. Für fortgeschrittene Analysen kann es sinnvoll sein, zusätzlich Data-Science-Expertise einzubinden.

➡️ Empfehlung: Organisationen, die bisher manuelle Exportschritte durchführen, können prüfen, ob sich diese mithilfe der API punktuell automatisieren lassen – z.B. über PowerQuery, Google Apps Script oder ähnliche Low-Code-Lösungen. So entstehen erste „Quick Wins“, ohne gleich eine vollwertige Dateninfrastruktur aufbauen zu müssen.
Für umfassendere, dauerhafte Datenintegrationen rund um CiviCRM ist die API ein zentrales Element – hier sind jedoch technische Kompetenzen, Wartungskapazitäten und Datenschutz-Know-how unabdingbar.



#### Die CiviCRM-API eröffnet einen großen Lösungsraum – erfordert allerdings technisches Verständnis

Die CiviCRM-API eröffnet viele Möglichkeiten, um Daten zu exportieren, zu verknüpfen oder automatisiert weiterzuverarbeiten – von kleinen Automatisierungen bis hin zu komplexen Datenpipelines. Dafür braucht es aber ein Grundverständnis von APIs, Datenstrukturen und Datenschutz. Besonders leistungsfähig sind Setups mit Python oder R, sie setzen jedoch eine gewisse IT-Infrastruktur und Pflegekapazitäten voraus.

➡️ Empfehlung: Wer bisher manuell exportiert, kann mit einfachen API-Anwendungen (z.B. PowerQuery oder Apps Script) starten und so erste Prozesse automatisieren. Für größere Datenlösungen rund um CiviCRM ist die API zentral – aber nur dann sinnvoll, wenn auch technische Kompetenzen und Kapazitäten vorhanden sind.

