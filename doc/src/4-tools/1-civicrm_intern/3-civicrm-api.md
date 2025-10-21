# CiviCRM-API & API-Explorer

## CiviCRM API
[⚙️ daten-verbinden](./../../2-datenlebenszyklus.html#daten-verbinden)

CiviCRM hat eine Programmierschnittstelle (Application Programming Interface / API[^note2]), welche wir verwenden, um von extern auf CiviCRM-Daten zuzugreifen.

> CiviCRM has a stable, comprehensive API (Application Programming Interface) for accessing and managing data. The API is the recommended way for any extension or external program to interact with CiviCRM. CiviCRM also uses its own API to power all new UIs and bundled extensions.[^note]
[^note]: [https://docs.civicrm.org/dev/en/latest/api/](https://docs.civicrm.org/dev/en/latest/api/)


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

### API einrichten

Die Konfiguration der API und die Einrichtung von API-Schlüsseln in CiviCRM ist etwas ungewöhnlich und erfordert mehrere Schritte:
- Erweiterung installieren: Zuerst muss die Erweiterung für API-Schlüssel installiert werden. Diese ist unter folgendem Link verfügbar:
https://civicrm.correlaid.org/civicrm/admin/extensions?action=update&id=com.cividesk.apikey&key=com.cividesk.apikey
- API-Schlüssel erstellen: Anschließend muss ein API-Schlüssel für einen bestimmten Kontakt erstellt werden.
- Kontakt zu einer Gruppe hinzufügen: Der Kontakt, für den der Schlüssel erstellt wurde, muss einer Gruppe hinzugefügt werden (z. B. der Gruppe „Administratoren“).
- REST-Authentifizierung konfigurieren: Abschließend muss die REST-Authentifizierung konfiguriert werden. Dies erfolgt über den folgenden Link:
https://civicrm.correlaid.org/civicrm/admin/setting/authx?reset=1 . Dort müssen die „Authentication Guards“ entfernt und die API-Schlüssel-Methode als erforderliche Authentifizierungsmethode für die relevanten Felder hinzugefügt werden.


## API Explorer
[⚙️ daten-verbinden](./../../2-datenlebenszyklus.html#daten-verbinden)[🔢 daten-auswerten](./../../2-datenlebenszyklus.html#daten-auswerten)<br>

Da die [Dokumentation der CiviCRM API](https://docs.civicrm.org/dev/en/latest/api/) für Nicht-PHP-Entwickler\*innen nicht besonders zugänglich ist, fanden wir es hilfreich, mit dem API-Explorer zu arbeiten. Im API-Explorer kann man mithilfe einer grafischen Benutzeroberfläche direkt in CiviCRM Abfragen an die API konfigurieren und ausprobieren. Das erleichtert es enorm, ...

- ... die richtigen Endpunkte zu finden 
- ... zu sehen, wie der `body` bei POST-Requests übergeben wird (siehe unten)
- ... die Anfrage so anzupassen, dass sie die gewünschten Daten liefert

Wenn ihr selbst mit der API arbeiten möchtet, ist der API-Explorer ein **gutes Werkzeug, um euch in der Entwicklung eurer Lösung zu unterstützen**. 

In der Basisinstallation findet ihr den API-Explorer unter *Unterstützung* -> *Entwickler* -> *API-Explorer*. Sonst fragt euren CiviCRM-Hosting-Dienstleister.

### POST-Request-Parameter aus dem API-Explorer nutzen

Bei POST-Requests an die CiviCRM API kann ein einzelnes Feld namens `params` verwendet werden , das eine [URL-encoded](https://de.wikipedia.org/wiki/URL-Encoding) [JSON](https://de.wikipedia.org/wiki/JSON)-Zeichenkette der API-Parameter enthält. URL-Encoding wandelt Sonderzeichen in ein Format um, das sicher in URLs und Formulardaten übertragen werden kann (z.B. wird `{` zu `%7B`). Dies ermöglicht es, komplexe JSON-Strukturen als einzelnes Formularfeld im POST-Body zu senden, das CiviCRM dann dekodiert und als API-Parameter verarbeitet.

Wenn man eine API-Anfrage konfiguriert hat, hier als Beispiel die Übergabe aller Kontakte, lässt sich weiter unten auf der Seite des API-Explorers der Reiter "REST" auswählen. Hier wird dann für unser Beispiel angezeigt:

```bash
curl -X POST -H "$CRM_AUTH" "$CRM_URL" \^
-d 'params=%7B%22limit%22%3A25%7D'
```

Nützlich für API-Anfragen mit andere Tools ist folgendes: `params=%7B%22limit%22%3A25%7D` Beachtet, dass die Anführungszeichen nicht mit kopiert werden sollten.



