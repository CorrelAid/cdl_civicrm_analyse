
## CiviCRM-Datenbank

[💾 daten-organisieren](./../datenlebenszyklus.html#daten-organisieren) <br>


Hinter CiviCRM als Software liegt eine relationale SQL-Datenbank[^note-sql], in der die Daten in zahlreichen Tabellen gespeichert sind. So sind Daten in CiviCRM bereits sehr gut **organisiert und verwaltet**.
Der Zugriff auf die SQL-Datenbank ermöglicht einen direkten Zugriff auf die Daten in CiviCRM. Dies ist v.a. nützlich für andere Komponenten, die einen dauerhaften und beständigen Datenzugriff benötigen.


[^note-sql]: Eine [Erklärung des Begriffs "Datenbank"](https://civic-data.de/selbstlernmaterial/#datenbank) gibt es im Selbstlernmaterial des Civic Data Labs. Relevant für das Verständnis von CiviCRM auch der Abschnitt "Mehr zu Datenbanken".

#### Vorteile
- Über die Datenbank erhaltet ihr Zugriff auf den gesamten Umfang eurer Daten und seid somit sehr flexibel in euren Auswertungen
- Tools wie [BI-Tools](../bi-tools.md) funktionieren am besten mit einer direkten Verbindung mit der CiviCRM-Datenbank

#### Nachteile
- Datensicherheit: ein direkter Zugriff auf die Datenbank ist auch immer ein Datensicherheitsrisiko. Deshalb kann euer CiviCRM-Dienstleister (berechtigte) Bedenken haben, euch diesen Zugriff zu gewähren. Greift wenn möglich auf die [API](./3-civicrm-api.md) zurück.
- Komplexität: Die Daten liegen in der CiviCRM in zahlreichen Tabellen ab. Sich hier zurecht zu finden, erfordert eine Einarbeitung in SQL und einen gewissen Spürsinn: Die Entity-Relationship-Diagramme (ERDs) für CiviCRM sind zwar [hier](https://docs.civicrm.org/dev/en/latest/api/ERDs/#contact-info) dokumentiert, aber trotzdem müsst ihr euch sicher zu einem gewissen Grad selbst durch die Daten "wühlen", v.a. wenn ihr Daten aus verschiedenen CiviCRM-Datentypen kombinieren wollt. 

#### Fazit
Für die Verwendung von bestimmten externen Tools (v.a. BI-Tools) kann ein direkter Zugriff auf die CiviCRM-Datenbank sinnvoll sein. Aufgrund der Datensicherheitsrisiken solltet ihr sehr verantwortungsbewusst mit dieser Option umgehen und Rücksprache mit eurem CiviCRM-Dienstleister halten. Falls ihr für externe Tools den Zugriff auf eine Datenbank benötigt, ist alternativ die "Spiegelung" eines Teils der CiviCRM Daten in eine [Managed Datenbank](../managed-datenbank.md) über die API und [Workflow-Tools](../workflow-tools.md) eine Option.