# Reports/Berichte und Dashlets

[📊 daten-visualisieren](./../../1-datenlebenszyklus.html#daten-visualisieren)

_Diese Seite wurde von ChatGPT erstellt und redaktionell und inhaltlich überarbeitet._

CiviCRM Reports sind vorgefertigte oder individuell erstellbare Auswertungen, mit denen ihr eure Daten aus CiviCRM (z. B. Kontakte, Spenden, Mitgliedschaften, Events) analysieren könnt. Berichte bieten Filter- und Gruppierungsoptionen und können gespeichert, exportiert und auch automatisiert per E-Mail verschickt werden.

[CiviCRM-Dashlets](https://docs.civicrm.org/user/en/latest/the-user-interface/menu-dashboard-and-dashlets/) sind kleine Dashboardmodule (Widgets) auf dem CiviCRM-Dashboard (der Startseite eurer CiviCRM-Instanz), Diese Module können wichtige Kennzahlen, Listen oder Diagramme anzeigen. So könnt ihr einen Überblick über wichtige Daten erhalten, ohne groß navigieren zu müssen.


#### Vorteile Reports/Berichte
- standardisierte Vorlagen
- können als CSV oder direkt als PDF exportiert werden
- Versand via Mail möglich
- einfache Möglichkeit, um "Listen" zu bekommen
- können über Dashlets (s.u.) ins Dashboard integriert werden

#### Nachteile Reports/Berichte
- Komplexe oder mehrdimensionale Analysen sind nur bedingt umsetzbar  
- Anpassungen erfordern teils technisches Wissen oder Erweiterungen  
- nicht so flexibel und mächtig wie [SearchKit](./4-civicrm-searchkit-chartkit.md#searchkit)
- Ergebnisse können nicht über die API v4 exportiert werden

#### Vorteile Dashlets
- Schneller benutzerfreundlicher Überblick: Wichtige Kennzahlen und Trends sind sofort sichtbar. Kein Umweg über Menüs oder Berichte nötig.  
- Ihr könnt eigene Berichte als Dashlets einbinden.  
- Visuelle Darstellung von Echtzeit-Daten

#### Nachteile Dashlets
- Es sind nur oberflächliche Analysen (einfache Kennzahlen, Balken- und Tortendiagramme, Listen) möglich – keine komplexen Auswertungen.  
- Eingeschränkte Visualisierung: Grafiken sind funktional, aber optisch und interaktiv recht einfach.  
- Zu viele Dashlets können die Dashboard-Performance verlangsamen.  
- Individuelle oder dynamische Visualisierungen erfordern Entwicklungsaufwand.


#### Fazit

CiviCRM-Berichte sind gut geeignet, um in CiviCRM Überblick zu bekommen über operative Abläufe und Kennzahlen. Berichte eignen sich auch für die Erstellung von Datensätzen zur weiteren Verarbeitung in anderen Tools (z.B. Excel). Allerdings können diese Datensätze dann nur manuell exportiert werden, während dies bei SearchKit über die API möglich ist. Generell ist SearchKit und ChartKit 

Die Dashlet-Funktion ist praktisch, um bestimmte Übersichten direkt auf der Startseite einzubinden. 
Für tiefergehende Datenanalysen oder professionelle Visualisierungen (z. B. mit interaktiven Diagrammen oder Data-Dashboards) reichen Berichte/Reports und Dashlets jedoch nicht aus – hier sind externe Tools oder individuelle Erweiterungen gefragt. 
 