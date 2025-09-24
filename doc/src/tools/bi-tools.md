# Business Intelligence Tools 
[🔢 daten-auswerten](./../datenlebenszyklus.html#daten-auswerten)
[📊 daten-visualisieren](./../datenlebenszyklus.html#daten-visualisieren) 
[💬 daten-kommunizieren](./../datenlebenszyklus.html#daten-kommunizieren)

Business Intelligence Tools (BI-Tools) sind Softwarelösungen, die Organisationen dabei unterstützen, Daten zu sammeln, zu analysieren, zu visualisieren und in verwertbare Erkenntnisse umzuwandeln. Sie helfen, fundierte Entscheidungen zu treffen, indem sie komplexe Datenmengen verständlich und zugänglich machen.



## Metabase
[🔢 daten-auswerten](./../datenlebenszyklus.html#daten-auswerten)
[📊 daten-visualisieren](./../datenlebenszyklus.html#daten-visualisieren) 
[💬 daten-kommunizieren](./../datenlebenszyklus.html#daten-kommunizieren)

[Metabase](https://www.metabase.com) ist eine Open-Source-Software für Business Intelligence, die Organisationen dabei unterstützt, Daten zu analysieren und in interaktiven Dashboards zu visualisieren. Die Anwendung ermöglicht es Nutzer\*innen, auch ohne SQL-Kenntnisse Abfragen durchzuführen und Dashboards und Berichte zu erstellen. Metabase ist mit einer Vielzahl von Datenbanken kompatibel und richtet sich an Anwender\*innen, die Daten zugänglich und nutzbar machen möchten.

Man kann Metabase entweder selbst hosten, von einem IT-Dienstleister hosten lassen oder bestehende Hosting-Angebote nutzen:

- [Metabase Cloud](https://www.metabase.com/pricing/)
- [Elestio](https://elest.io/open-source/metabase])

### Eine Datenbankverbindung in Metabase hinzufügen

Damit Metabase auf die Daten aus eurer Datenbank (z.B. [CiviCRM Datenbank](./civicrm_intern/2-civicrm-datenbank.md) oder eine [Managed Datenbank](./managed-datenbank.md)) zugreifen kann, müsst ihr eine Verbindung zur Datenbank in Metabase hinzufügen.

1. Als Admin in Metabase einloggen.  
2. Oben rechts auf das **Zahnrad** → **Admin settings** klicken.  
3. **Databases** wählen → **Add a database**.  
4. Datenbank-Typ auswählen (z. B. Postgres, MySQL, SQL Server …).  
5. Verbindungsdaten eintragen:  
   - Name 
   - Host / IP 
   - Port 
   - Datenbankname  
   - Benutzer  
   - Passwort  
   - ggf. Connection-String  
6. Optional: **SSL** oder **SSH-Tunnel** aktivieren, falls nötig.  
7. **Save changes** (Metabase testet die Verbindung).  
8. Danach: **Sync database schema** und ggf. **Re-scan** ausführen, damit Tabellen/Spalten sichtbar sind.  
9. Falls Probleme auftreten: Netzwerk/Firewall, Port, DB-Zugriffsrechte und Metabase-Logs prüfen.


In [diesem YouTube Video](https://www.youtube.com/watch?v=P6DFuwqSDmQ) könnt ihr mitverfolgen, wie die Schritte sind. Die [schriftliche Dokumentation](https://www.metabase.com/docs/latest/databases/connecting) kann auch hilfreich sein.

#### Vorteile
- ermöglicht eigenständige Exploration von Daten
- zahlreiche Visualisierungstypen
- viele Optionen zur Kommunikation von Ergebnissen: automatsierte Email, Export als Bilddatei oder PDF, Teilen über öffentlichen Link, Einbettung von Dashboards und Grafiken in Website (wie hier)

<iframe width="100%" height="400px%" src="https://mtbs.correlaid.org/public/question/d0f6fa28-8270-4d51-afef-0e3218a4af94"></iframe>

#### Nachteile
- Kosten für Hosting relativ hoch
- in der Community Version können Farbpaletten nicht angepasst werden
- erfordert Einarbeitung und Auseinandersetzung mit Datenkonzepten wie z.B. "Joins" (Zusammenführen von Tabellen). 

#### Fazit 
Metabase (und andere BI Tools) sind sinnvoll, wenn ihr mittel- und langfristig eure Daten selbstbestimmt und eigenständig v.a. deskriptiv auswerten wollt. Mit Metabase (und jedem anderen BI Tool) werdet ihr selbst zu Datenanalyst*innen und könnt agil und nach Bedarf neue Visualisierungen und Dashboards anlegen. Komplexe Analysen wie Machine Learning oder KI könnt ihr im Bereich Business Intelligence nicht erwarten. Dafür gibt es nützliche Features, um eure Daten und Datenvisualisierungen mit externen Stakeholdern zu teilen, z.B. über Einbettungen oder öffentliche Links.

Den Vorteilen von Metabase (bzw. BI Tools) stehen **nötige Investitionen in Kompetenzaufbau und Infrastruktur** gegenüber. Metabase ist ein großes Tool mit vielen Funktionen. 
Deshalb braucht es Zeit und die Bereitschaft, sich einzuarbeiten und dazuzulernen. Hinzu kommt, dass bestehende Hosting-Optionen nicht günstig sind und Self-Hosting ohne interne Kompetenzen nicht möglich ist. Die Zusammenarbeit mit bestehenden IT-Dienstleistern ist eine Möglichkeit, wird aber natürlich trotzdem etwas kosten.
 
Insgesamt ist das Investment in ein Business Intelligence Tool **nicht für alle CiviCRM-Organisationen notwendig**. Es ist aber **sehr sinnvoll, wenn Daten perspektivisch für euch eine zentrale Rolle** spielen werden.

### Tutorials

#### Verbinden von Datenbanken mit Metabase


## Alternativen: Apache Superset, Power BI und Tableau

[🔢 daten-auswerten](./../datenlebenszyklus.html#daten-auswerten)
[📊 daten-visualisieren](./../datenlebenszyklus.html#daten-visualisieren) 
[💬 daten-kommunizieren](./../datenlebenszyklus.html#daten-kommunizieren)

Alternativen zu Metabase sind u.a.:

- [Apache Superset](https://superset.apache.org/): komplett Open Source
- [Power BI](https://www.microsoft.com/de-de/power-platform/products/power-bi?market=de): Business Intelligence Tool in der Microsoft Umgebung
- [Tableau](https://www.tableau.com/): etabliertes BI-Tool aus den USA. Kann auch selbst gehostet werden (Lizenz muss trotzdem erworben werden).
- [Looker](https://lookerstudio.google.com/u/0/): BI Tool in der Google Umgebung


