# CiviCRM-API & API-Explorer

## CiviCRM API

<!-- tags: civicrm; komponenten-verbinden; daten-auswerten -->

CiviCRM hat eine Programmierschnittstelle (Application Programming Interface / API[^note2]), welche wir verwenden, um von extern auf CiviCRM-Daten zuzugreifen.

> CiviCRM has a stable, comprehensive API (Application Programming Interface) for accessing and managing data. The API is the recommended way for any extension or external program to interact with CiviCRM. CiviCRM also uses its own API to power all new UIs and bundled extensions.[^note]
[^note]: [Quelle](https://docs.civicrm.org/dev/en/latest/api/)


In der Basisinstallation gibt es für jeden Datentyp in CiviCRM eine sogenannte **Entität** (en: Entity):

- Kontakte -> `Contact`
- Aktivitäten -> `Activity` 
- Veranstaltungen -> `Event`
- Zuwendungen -> `Contribution`
- Emails -> `Email`
- uvm. 

Jede Entität hat wiederum sogenannte *Aktionen*, die man mithilfe der API auf ihr ausführen kann. Zum Beispiel kann man Kontakte erstellen (`create`) oder löschen (`delete`). Für den Datenzugriff am relevantesten ist die Aktion `get`, mithilfe der man Dateneinträge abfragen kann.

Aus der Kombination von Entität und Aktion ergeben sich die API-Endpunkte. Hier sind Endpunkte, die wir im Rahmen unserer Experimente verwendet haben:

- Liste von Kontakten: `https://civicrm.correlaid.org/civicrm/ajax/api4/Contact/get` 
- Liste von in SearchKit abgespeicherten Suchen: `https://civicrm.correlaid.org/civicrm/ajax/api4/SavedSearch/get`
- Die Ergebnisse einer gespeicherten SearchKit Suche herunterladen: `https://civicrm.correlaid.org/civicrm/ajax/api4/SearchDisplay/download`

[^note2]: Eine [Erklärung des Begriffs "API"](https://civic-data.de/selbstlernmaterial/#api) gibt es im Selbstlernmaterial des Civic Data Labs.
Es gibt eine [API-Dokumentation](https://docs.civicrm.org/dev/en/latest/api/) (Englisch), die einen guten Überblick gibt über die [API v4](https://docs.civicrm.org/dev/en/latest/api/v4/usage/#api-output). Allerdings ist die Dokumentation sehr auf PHP ausgerichtet und bei weitem nicht alle Routen + Endpunkte sind dort dokumentiert. 


Um Zugriff auf die API zu erhalten, kontaktiert am besten euren CiviCRM-Dienstleister. Wenn ihr CiviCRM selbst hostet und administriert, folgt der [Dokumentation](https://docs.civicrm.org/sysadmin/en/latest/setup/api-keys/).


### How to API
- Congiguring API keys is weird: https://docs.civicrm.org/sysadmin/en/latest/setup/api-keys/
    - api key extension needs to be installed: https://civicrm.correlaid.org/civicrm/admin/extensions?action=update&id=com.cividesk.apikey&key=com.cividesk.apikey
    - an api key needs to be created for a contact
    - the contact needs to be added to a group (e.g. administrators)
    - Rest authentication needs to be configured: https://civicrm.correlaid.org/civicrm/admin/setting/authx?reset=1 with deleting the Authentication guards (?) and adding api key as methods to the required fields




## API Explorer

<!-- tags: civicrm; daten-organisieren; daten-auswerten -->

Da die [Dokumentation der CiviCRM API](https://docs.civicrm.org/dev/en/latest/api/) für Nicht-PHP-Entwickler\*innen nicht besonders zugänglich ist, fanden wir es hilfreich, mit dem API-Explorer zu arbeiten. Im API-Explorer kann man mithilfe einer grafischen Benutzeroberfläche direkt in CiviCRM Abfragen an die API konfigurieren und ausprobieren. Das erleichtert es enorm, ...

- ... die richtigen Endpunkte zu finden 
- ... zu sehen, wie der `body` bei POST-Requests übergeben wird (siehe unten)
- ... die Anfrage so anzupassen, dass sie die gewünschten Daten liefert

Wenn ihr selbst mit der API arbeiten möchtet, ist der API-Explorer ein **gutes Werkzeug, um euch in der Entwicklung eurer Lösung zu unterstützen**. 

In der Basisinstallation findet ihr den API-Explorer unter *Unterstützung* -> *Entwickler* -> *API-Explorer*. Sonst fragt euren CiviCRM-Hosting-Dienstleister.

### Den encoded Body-Parameter nutzen

Wenn man eine API-Anfrage konfiguriert hat, hier als Beispiel die Übergabe aller Kontakte, lässt sich weiter unten auf der Seite des API-Explorers der Reiter "REST" auswählen. Hier wird dann für unser Beispiel angezeigt:

```
curl -X POST -H "$CRM_AUTH" "$CRM_URL" \^
-d 'params=%7B%22limit%22%3A25%7D'
```

Nützlich für API-Anfragen mit andere Tools ist folgendes: `params=%7B%22limit%22%3A25%7D`

