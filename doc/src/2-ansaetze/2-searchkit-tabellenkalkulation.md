# SearchKit & Excel / Google Sheets

_**SearchKit Suchergebnisse über die API in Excel oder Google Sheets laden - Datenvisualisierung und weitere Auswertung dort.**_

[🧹 daten-organisieren](./../1-datenlebenszyklus.md#daten-organisieren): CiviCRM Datenbank; [Power Query](./../3-tools/2-tabellenkalkulation.md#power-query) bzw. [Google Apps Script](./../3-tools/2-tabellenkalkulation.md#google-apps-script) zur Ansprache der [CiviCRM API](./../3-tools/1-civicrm_intern/3-civicrm-api.md) <br>
[🔢 daten-auswerten](./../1-datenlebenszyklus.md#daten-auswerten): [SearchKit](./../3-tools/1-civicrm_intern/4-civicrm-searchkit-chartkit.md#searchkit) <br>
[📊 daten-visualisieren](./../1-datenlebenszyklus.md#daten-visualisieren): [Excel](./../3-tools/2-tabellenkalkulation.md#microsoft-excel) bzw. [Google Sheets](./../3-tools/2-tabellenkalkulation.md#google-sheets) <br>

# SearchKit, Excel und Power Query

## Voraussetzungen


- CiviCRM API Schlüssel, um auf die folgenden Endpunkte der CiviCRM API eurer Instanz zuzugreifen:
    - `ajax/api4/SavedSearch/get`
    - `ajax/api4/SearchDisplay/download`
- Lizenz für *Microsoft Excel Desktop Version*[^note-powerquery], optional für *Excel für das Web*

```admonish warning title="Mit API-Schlüssel vorsichtig umgehen"
Bei diesem Ansatz hinterlegt ihr euren API-Schlüssel in einer Excel-Datei. Alle Personen, die diese Datei öffnen, können somit auf euren API-Schlüssel und somit auf die Daten zugreifen, auf die ihr in CiviCRM Zugriff habt. Seid euch der Risiken bewusst und geht verantwortungsvoll mit entstandenen Dateien um.

```

[^note-powerquery]: Für die Einrichtung und Konfiguration ist die Desktop Version von Excel notwendig. Das Abrufen der Daten funktioniert dann auch unter Excel für das Web, wenn man die Datei hochgeladen hat. Der Ansatz wurde getestet unter Microsoft Excel for Mac, Version 16.100.3 unter der Lizenz Microsoft 365.

## Anleitung

### A. Setup

1. Ladet die `test-excel.xlsx` Datei aus dem [GitHub Repository](https://github.com/CorrelAid/cdl_civicrm_analyse/blob/main/supporting_code/powerquery/test-excel.xlsx) herunter. Dazu oben rechts auf die drei Punkte und dann auf "Download" bzw. "Herunterladen" klicken.
2. Öffnet die Datei in der Desktop Version von Microsoft Excel. 
3. Aktiviert die externen Datenverbindungen, indem ihr auf "Inhalt aktivieren" klickt.
![Screenshot Sicherheitswarnung "Externe Datenverbindungen aktivieren"](../images/2-ansaetze/2-searchkit-tabellenkalkulation/pq-warning.png)

4. Öffnet den Power Query Editor über den Ribbon Daten -> Daten abfragen (Power Query) -> Power Query-Editor starten.

![Screenshot User Interface um den Power Query Editor zu starten](../images/2-ansaetze/2-searchkit-tabellenkalkulation/pq-editor-starten.png)

5. In der Seitenleiste links wählt den Eintrag `CiviToken`. Gebt euren API Schlüssel für die CiviCRM API ein. Klicke auf "Übernehmen".
![Screenshot User Interface um den CiviToken Parameter zu editieren](../images/2-ansaetze/2-searchkit-tabellenkalkulation/pq-civitoken-edit.png)



### B. Eigene SearchKit-Suchen herunterladen

Im **Power Query Editor** ist die **Funktion `getSavedSearch`** (dt. "bekomme gespeicherte Suche") hinterlegt. Mit dieser Funktion könnt ihr eigene SearchKit Suchen abfragen.

1. In der linken Seitenleiste -> fx `getSavedSearch` 
2. in das Feld "SearchName" den Namen eurer SearchKit Suche eingeben. Wichtig: **Leerzeichen müsst ihr mit Unterstrichen ersetzen**. z.B. wird "geschlecht statistik" zu "geschlecht_statistik" oder "Zuwendungen nach Zahlungsmethode" zu "Zuwendungen_nach_Zahlungsmethode". **auf "Aufrufen" klicken**.
![Screenshot User Interface um die Funktion getSavedSearch auszuführen](../images/2-ansaetze/2-searchkit-tabellenkalkulation/pq-exec-fun.png)

3. dies legt einen neuen Query in der Seitenleiste an und führt ihn direkt aus. Ihr könnt dem Query mit Rechtsklick einen aussagekräftigeren Namen geben. 
4. Wenn ihr ganz normal auf den Query in der Seitenleiste klickt, solltet ihr das Ergebnis eurer SearchKit Suche als Tabelle sehen. 
![Screenshot User Interface Ergebnistabelle eines Power Queries](../images/2-ansaetze/2-searchkit-tabellenkalkulation/pq-result.png)
5. Sehr ihr anstatt dessen eine Warnung oder einen Fehler, ist etwas schief gelaufen. Überprüft, ob ihr die richtigen Zugriffsrechte habt und ob ihr den API Schlüssel bei Setup richtig hinterlegt habt.
6. Um in Excel gut weiterarbeiten zu können, müsst ihr noch **sicherstellen, dass die Daten den richtigen Typ** haben. Das ist v.a. wichtig für Zahlenwerte wie Anzahl, Mittelwert, usw. Hierzu in der Vorschautabelle im Power Query Editor Rechtsklick auf den Spaltennamen -> Änderungstyp. Dann den gewünschten Datentyp auswählen.

![Screenshot User Interface um den Datentyp einer Spalte eines Power Query Tables zu ändern](../images/2-ansaetze/2-searchkit-tabellenkalkulation/pq-change-type.png)

7. Schließt den Power Query Editor mit dem Button **Schließen und Laden**. Dies **legt ein neues Tabellenblatt für die neuen Queries an und fügt die Ergebnistabellen dort ein**.
8. Ihr könnt jetzt die Tabelle markieren mit den Daten weiterarbeiten: z.B. ein Diagramm (Einfügen -> Diagramm auswählen) oder eine Pivot-Tabelle (Einfügen -> PivotTable) einfügen.


**Tipp**: auf Windows könnt ihr noch genauer kontrollieren, wie und wo ihr eure Power Queries verwenden wollt. Auf Youtube gibt es viele Videos zu Power Query, die mit der Windows Version arbeiten und euch zeigen, was ihr noch so machen könnt.


### C. Power Queries aktualisieren und bearbeiten

Über Ribbon Daten -> Alle Aktualisieren könnt ihr eure **Power-Query-Abfragen aktualisieren**. **Verbundene Diagramme, Pivot-Tabellen und sonstige Auswertungen aktualisieren sich automatisch**.

Falls ihr die Funktion bearbeiten möchtet, könnt ihr dies über Rechtsklick auf `getSavedSearch` -> Erweiterter Editor tun. Den Code für die Funktion sowie einen Power Query, der euch eine Liste aller SearchKit Suchen zurückgibt, haben wir auch im [GitHub Repository](https://github.com/CorrelAid/cdl_civicrm_analyse/tree/main/supporting_code/powerquery) hinterlegt.


```admonish question title="Funktioniert das auch in der Microsoft Cloud?"
Power Query wird in Excel für das Web nur eingeschränkt unterstützt. Es gibt keinen Power Query Editor, aber bestehende Queries funktionieren und es gibt den "Alle aktualisieren" Button. Verwendet ihr Excel in der Cloud, kann ein\*e Kolleg\*in die Queries anlegen und dann die Excel-Datei in die Cloud laden.
```

## Fazit
Die Verwendung von Microsoft Excel und PowerQuery ist vor allem sinnvoll, wenn ihr ...

- a) ... sowieso schon Daten in Excel verwaltet und ihr diese mit Daten aus eurem CiviCRM kombinieren wollt
- b) ... eine unkomplizierte, interne Lösung sucht, um einfache Grafiken und "Dashboards" zu erstellen 

Da es sich bei Microsoft um einen US-amerikanischen "Big-Tech" Anbieter handelt, solltet ihr auf Datenschutz und auch -sicherheit achten, vorzugsweise nur aggregierte Daten importieren und generell überlegen, welche Art von Daten ihr "in die Hände von Google" geben wollt, selbst wenn sie nicht mehr unter die DSGVO fallen.

# SearchKit, Google Sheets und Google Apps Script

## Voraussetzungen

- CiviCRM API Schlüssel, um auf die folgenden Endpunkte der CiviCRM API eurer Instanz zuzugreifen:
    - `ajax/api4/SavedSearch/get`
    - `ajax/api4/SearchDisplay/download`
- Google Konto[^note-google]

```admonish warning title="Mit API-Schlüssel vorsichtig umgehen"
Bei diesem Ansatz hinterlegt ihr euren API-Schlüssel in einem Google Apps Script. Alle Personen, die Mitarbeiter-Zugriff (en: Editor) auf das Google Sheet haben, können auf den Apps Script Editor und somit auf euren API-Schlüssel und alle Daten zugreifen, auf die ihr in CiviCRM Zugriff habt. Seid euch der Risiken bewusst und geht verantwortungsvoll mit Zugriffsrechten um.

```

[^note-google]: Wir haben den Ansatz mit einem Google Account getestet aus unserem [Google Workspace for Nonprofits](https://www.google.com/nonprofits/offerings/workspace/). Theoretisch sollte es aber auch mit einem kostenlosen, privaten Google Account funktionieren.

## Anleitung


### A. Setup

#### Schneller Setup
1. Erstellt eine Kopie dieses [Google Sheets](https://docs.google.com/spreadsheets/d/1KOru4DDJRK9KSCHCSNt3m9SYxvppOjYuBZpzrw1MyG0/edit?pli=1&gid=1127353823#gid=1127353823): Datei -> Kopie erstellen. 
2. Ihr bekommt eine Warnung, dass eine Apps Script-Datei ebenfalls kopiert wird. Ihr könnt den Code erst überprüfen, bevor ihr eine Kopie erstellt. 
3. Öffnet das erstellte Google Sheet und öffnet die **Google Apps Script Konsole** über Erweiterungen -> Apps Script. Ein neues Fenster öffnet sich mit der Datei `runAllSearches.gs` geöffnet.

```admonish question title="Was ist das für Code?"

Der Code ist auf zwei `.gs`-Dateien[^footnote-gs] aufgeteilt:

1. `runAllSearches.gs`: hier gebt ihr euren API-Schlüssel ein und verwendet die Funktion `fetchSavedSearch`, um Ergebnisse einer oder mehrerer SearchKit-Suche(n) mithilfe CiviCRM-API in das Google Sheet zu importieren.
2. `fetchSavedSearch.gs`: enthält die Funktion `fetchSavedSearch`

Den Code findet ihr auch im [GitHub Repository](https://github.com/CorrelAid/cdl_civicrm_analyse/supporting-code/google-apps-script).

```


#### Manueller Setup

1. Erstellt ein leeres Google Sheet und gebt ihm einen sinnvollen Namen (z.B. "CiviCRM API Test")
2. Öffnet Google Apps Script (Erweiterungen -> Apps Script). Es öffnet sich ein Editor. 
3. Benennt die Datei `Code.gs` um in `runAllSearches` (drei Punkte rechts neben Namen -> Umbenennen) und drückt Enter.
4. Löscht den Beispielcode und kopiert den [Code der Datei `runAllSearches.js`](https://github.com/CorrelAid/cdl_civicrm_analyse/blob/main/supporting_code/google-apps-script/runAllSearches.js) in das Editorfenster. Speichert mithilfe von `STRG/CMD+S` oder dem Diskettensymbol.
5. Erstellt eine neue Script-Datei im Apps Script Editor: + Zeichen bei Datei -> Script

![Screenshot des Apps Script Editors: wie man eine neue Datei erstellt](../images/2-ansaetze/2-searchkit-tabellenkalkulation/gs-add-datei.png)

5. Löscht den Beispielcode und kopiert den [Code der Datei `fetchSavedSearch.js`](https://github.com/CorrelAid/cdl_civicrm_analyse/blob/main/supporting_code/google-apps-script/fetchSavedSearch.js) in das Editorfenster. Speichert mithilfe von `STRG/CMD+S` oder dem Diskettensymbol.

### B. Apps Script ausführen & automatisieren {#gs-ausfuehren}

#### Manuelle Ausführung
Um den Code laufen zu lassen, drückt ihr auf den **Button "Ausführen"** (en: "Run") (nicht: "Bereitstellen"!), wenn ihr `runAllSearches.gs` geöffnet habt. Wenn ihr zum ersten Mal den Code ausführt, werdet ihr dazu aufgefordert, der **App Berechtigungen zu geben** (mehr dazu im aufklappbaren Infokasten). 

Im _Ausführungsprotokoll_ (en: Execution Log) könnt ihr nachvollziehen, ob die Ausführung funktioniert.  

![Screenshot des Apps Script Editors: Ausführungsprotokoll](../images/2-ansaetze/2-searchkit-tabellenkalkulation/gs-execution-log.png)



```admonish tldr title="Die Sache mit den Berechtigungen"
Wenn ihr zum ersten Mal den Code ausführt, werdet ihr dazu aufgefordert, der **App Berechtigungen zu geben**. Dies müsst ihr tun, damit das Skript auf die CiviCRM-API zugreifen kann und die Daten in das Google Sheet schreiben kann. Wenn ihr Google Chrome verwendet, folgen weitere Warnungen, da es sich nicht um eine "verifizierte App" handelt.

![Warnhinweis von Google: "Autorisierung erforderlich"](../images/2-ansaetze/2-searchkit-tabellenkalkulation/gs-authorization.png)


Die Berechtigungen gelten nur für eure eigene Kopie der App. Diese habt ihr erstellt, ...
- ... indem ihr das von uns bereitgestellte Google Sheet mit dem dazugehörigen Apps Script Code *kopiert* habt (["schneller Setup"](#schneller-setup)). Wir haben auf eure *Kopie* des Google Sheets **keinen Zugriff**. 
- ... indem ihr eine *eigenes* Google Sheet plus eigenem Apps Script Code erstellt habt (["manueller Setup"](#manueller-setup)). Wir haben auf euer Google Sheet und auch den Code **keinen Zugriff**.  

Trotzdem solltet ihr Code, den ihr von anderen übernehmt, immer sorgfältig prüfen. Hier können euch LLMs oder ein Blick durch Expert*innen weiterhelfen.
```

#### Automatisierte Ausführung
Damit ihr nicht jedes Mal auf "Ausführen" klicken müsst, könnt ihr die Ausführung von `runAllSearches.gs` auch **mithilfe von sogenannten Triggern automatisieren**. Trigger lösen die Ausführung des Skripts aus. Es gibt verschiedene Trigger (z.B. beim Öffnen des Google Sheets etc.), eine Übersicht findet ihr [hier](https://developers.google.com/apps-script/guides/triggers/installable?hl=de).

Die genaue Wahl des Triggers hängt von eurer Anwendung ab. Wir empfehlen:

- Zeitgesteuert: Aktualisiert die Daten und damit verknüpften Visualisierungen regelmäßig. Den genauen Rhythmus (stündlich/täglich/wöchentlich) legt ihr fest. Eine populäre Wahl ist einmal pro Tag mit Ausführung in der Nacht (siehe Screenshot).
- beim Öffnen des Google Sheets: Garantiert, dass sich eure Daten und damit verknüpfte Visualisierungen bei jedem Öffnen des Sheets aktualisieren. 


Die Einrichtung eines Triggers ist intuitiv über eine grafische Benutzeroberfläche im Google Apps Script Editor möglich. Eine kurze Anleitung findet ihr [hier](https://developers.google.com/apps-script/guides/triggers/installable?hl=de#manage_triggers_manually).

![Screenshot des Apps Script Editors: Maske, in der mithilfe von mehreren Dropdowns ein Trigger konfiguriert werden kann.](../images/2-ansaetze/2-searchkit-tabellenkalkulation/gs-trigger.png)



### C. Eure eigenen Suchen abrufen

Um eure eigenen Suchen abzurufen, müsst ihr den **Code im Google Apps Script Editor anpassen**. 

In der Datei `runAllSearches.gs`:

1. Fügt in Zeile 2 euren API-Schlüssel zwischen den "" ein. 
2. Fügt in Zeile 10 den Namen eurer SearchKit Suche und den Namen des Tabellenblatts in den Funktionsaufruf von `fetchSavedSearch` jeweils **zwischen den ""** ein. Das Tabellenblatt muss noch nicht existieren, die Funktion erstellt es dann automatisch.
3. _Optional_: Wiederholt Schritt 1+2 in Zeile 14, wenn ihr zusätzlich Ergebnisse einer anderen Suche in ein weiteres Tabellenblatt importieren wollt. Falls nicht, löscht den Code in Zeile 14. 
4. _Optional_: Wenn ihr noch mehr Suchen importieren wollt, könnt ihr den Code aus Zeile 10 so oft kopieren und anpassen (siehe Schritte 1+2), wie ihr wollt. 

```js
function runAllSearches() {
  var apiKey = "fügt euren API-SCHLÜSSEL hier ein"; // Replace with your actual API key within the "", e.g. "b2391932kss"

 // Dokumentation der fetchSavedSearch Funktion
 // fetchSavedSearch(searchName, sheetName, apiKey);
 // @param {string} searchName - The name of the saved search in CiviCRM.
 // @param {string} sheetName - The name of the sheet in the Google Spreadsheet where data should be written. Does not need to exist when executed
 // @param {string} apiKey - Your CiviCRM API key.

  fetchSavedSearch("fügt den Namen eurer SearchKit Suche hier ein", "fügt den Namen des Google Sheet Blattes hier ein", apiKey);
  //Beispiel: fetchSavedSearch("geschlecht_statistik", "Geschlechtsverteilung", apiKey);

  // ihr könnt noch mehr Suchen in anderen Blättern abrufen
  fetchSavedSearch("fügt den Namen eurer SearchKit Suche hier ein", "fügt den Namen des Google Sheet Blattes hier ein", apiKey);
  //Beispiel: fetchSavedSearch("Bundesland", "Bundeslandverteilung", apiKey);
}
```

Folgt der Anleitung in [**B. Apps Script ausführen**](#gs-ausfuehren), um euren angepassten Code auszuführen.

### D. Visualisierung

Sobald die Daten in Google Sheets importiert sind, könnt ihr wie gewohnt die Visualisierungstools von Google Sheets verwenden, um Balken-, Tortendiagramme usw. zu erstellen. Auf YouTube und mit der Suchmaschine eurer Wahl findet ihr zahlreiche Ressourcen.

Die Visualisierungen könnt ihr im jeweiligen Tabellenblatt hinzufügen oder in einem eigenen "Dashboard"-Sheet arrangieren (z.B. [hier](https://docs.google.com/spreadsheets/d/1KOru4DDJRK9KSCHCSNt3m9SYxvppOjYuBZpzrw1MyG0/edit?gid=742986434#gid=742986434)).

Die interaktiven Datenvisualisierungen lassen sich **einzeln veröffentlichen und in eine Website einbetten**. Hier der Donut-Chart zur Geschlechtsverteilung, den ihr auch im Sheet "Dashboard" unseres Google Sheets findet: 

<iframe width="780" height="483" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSrORqcVwuayUOI74kzfZ5tveuTZAdl7nIfcTI9Sm1p5ssiODtYa3Nt5n4pNNAzDV9_nkum3rgeaFrQ/pubchart?oid=513068507&amp;format=interactive"></iframe>

```admonish tldr title="Google Sheets als Datenquelle für andere Visualisierungstools"
Einige Tools zur Datenvisualisierung können Google Sheets als Datenquelle verwenden (z.B. DataWrapper oder Canva). Anstelle die Visualisierungen direkt in Google Sheets zu erstellen, könnt ihr Google Sheets auch nur als "automatisiert aktualisierten Zwischenspeicher" verwenden. Achtet hierbei auf Datensicherheit - manchmal müsst ihr euer Google Sheet (teilweise) publizieren.
```



## Fazit
Die Verwendung von Google Sheets und Google Apps Script ist vor allem sinnvoll, wenn ihr ...

- a) ... sowieso schon Daten in Google Sheets verwaltet und ihr diese mit Daten aus eurem CiviCRM kombinieren wollt
- b) ... eine unkomplizierte, interne Lösung sucht, um einfache Grafiken und "Dashboards" zu erstellen 
- c) ... einen "Zwischenspeicher" für andere Anwendungen benötigt, die Google Sheets als Datenquelle verwenden können

Da es sich bei Google um einen US-amerikanischen "Big-Tech" Anbieter handelt, solltet ihr auf Datenschutz und auch -sicherheit achten, vorzugsweise nur aggregierte Daten importieren und generell überlegen, welche Art von Daten ihr "in die Hände von Google" geben wollt, selbst wenn sie nicht mehr unter die DSGVO fallen.

[^footnote-gs]: `gs` steht für **G**oogle Apps **S**cript. Technisch gesehen ist Google Apps Script eine Version von JavaScript.
