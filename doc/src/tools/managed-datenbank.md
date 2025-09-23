# Managed Datenbank

Managed Datenbanken sind cloud-basierte Datenbankdienste, bei denen sich der Anbieter um die technische Infrastruktur, Wartung und Skalierung kümmert. Für CiviCRM-Analysen bieten sie eine einfache Möglichkeit, Daten zu speichern und zu verarbeiten, ohne eigene Server betreiben zu müssen.

Im Kontext der Visualisierung und Analyse von CiviCRM-Daten können managed Datenbanken als sogenanntes Data-Warehouse zum Einsatz kommen. Ein Data-Warehouse ist eine zentrale Datenbank, die speziell für Analysen und Berichte optimiert ist und Daten aus verschiedenen Quellen sammelt und strukturiert. 

Wir konzentrieren uns in diesem Projekt auf relationale Datenbanken mit SQL. Relationale Datenbanken organisieren Daten in Tabellen mit Zeilen und Spalten, ähnlich wie Excel-Tabellen. Die Tabellen können über gemeinsame Spalten (Keys) miteinander verknüpft werden, wodurch komplexe Datenstrukturen entstehen. SQL (Structured Query Language) ist die Standardsprache für das Abfragen und Verwalten dieser Datenbanken. 

## Was bedeutet "Managed"?

Managed Datenbanken nehmen die operative Verantwortung für die Datenbank ab. Der Anbieter übernimmt Aufgaben wir das Durchführen von automatische Updates mit Security-Patches, Backup-Management mit regelmäßigen Sicherungen und Monitoring der Performance.

Die Hauptvorteile liegen in der Zeitersparnis durch wegfallende Server-Administration. Nachteile sind höhere Kosten bei konstant hoher Nutzung, Vendor Lock-in und eingeschränkte Konfigurationsmöglichkeiten.

### Serverless Datenbaken

Serverless ist eine spezielle Form von Managed Datenbanken mit zusätzlichen Vorteilen. Normalerweise bezahlt man bei managed Datenbaken für die permanente Nutzung eines Servers, auf der die Datenbank läuft. Wie der Name beschreibt, fällt dies bei serverless jedoch weg. Konkret bedeutet das Pay-per-Use-Bezahlung nur für tatsächlich verbrauchte Ressourcen und die Möglichkeit des "Cold Start" - die Datenbank kann bei Inaktivität pausieren und bei Bedarf reaktiviert werden.

**Warum ist Serverless ideal für CiviCRM-Analysen?** Bei der Nutzung eine Datenbank als externes Data Warehouse wird diese typischerweise nicht kontinuierlich abgefragt, sondern hauptsächlich für periodische Berichte und Analysen genutzt. Serverless bietet daher Kosteneffizienz bei unregelmäßiger Nutzung.

### Grafische Nutzeroberfläche statt SQL

Eine der am häufigsten verwendeten Sprachen für die Verwaltung und Abfrage von Datenbanken ist SQL. SQL zu können ist ein nützlicher Skill; es zu lernen erfordert jedoch Zeit. Eine Alternative ist die Verwaltung einer Datenbank über grafische Nutzeroberflächen (GUI - Graphical User Interface).

Moderne managed Datenbanken bieten oft webbasierte Oberflächen, die es ermöglichen, Tabellen zu erstellen, Daten einzufügen und anzuzeigen, ohne SQL-Code schreiben zu müssen. Diese Oberflächen funktionieren ähnlich wie Excel und reduzieren die Einstiegshürde erheblich. Gleichzeitig bleibt die Option bestehen, bei Bedarf auf SQL-Befehle zurückzugreifen.

## Neon

[💾 daten-organisieren](./../datenlebenszyklus.html#daten-organisieren)

[Neon](https://neon.com) ist eine serverless PostgreSQL-Datenbank, die sich komplett im Browser über eine intuitive GUI verwalten lässt. Wir haben uns für Neon entschieden, weil es serverless ist und gleichzeitig eine benutzerfreundliche Weboberfläche bereitstellt.

### Vorteile

- GUI-Management: Tabellen können direkt im Browser erstellt und verwaltet werden - ideal für weniger technische Nutzer*innen
- PostgreSQL: Vollständig kompatibel mit dem Standard PostgreSQL
- Automatische Backups und Sicherheit
- Kostenloser Plan für kleinere Projekte verfügbar
- Datenbanken können in der EU betrieben werden 

### Nachteile

- Nicht Open Source
- Bei sehr intensiver Nutzung können Kosten steigen
- Weniger Kontrolle über die Infrastruktur (Neon nutzt AWS oder Azure in der EU)

### Betrieb

Neon eignet sich besonders gut für CiviCRM-Analysen, da die Datenbank typischerweise nicht kontinuierlich abgefragt wird, sondern hauptsächlich für periodische Berichte und Analysen genutzt wird. Die serverless Architektur und die EU-Verfügbarkeit machen es zur idealen Lösung für deutsche Organisationen.

## Alternativen

### Supabase

[Supabase](https://supabase.com/) bietet ähnliche Funktionen wie Neon, ist jedoch mehr auf Echtzeitanwendungen ausgerichtet und nicht serverless.

### Scaleway Serverless SQL

[Scaleway](https://www.scaleway.com/en/serverless-sql-database/) ist ein französischer Anbieter einer umfangreichen Zahl an Cloud-Angeboten, bietet jedoch für serverless Datenbanken eine weniger umfangreicherer GUI als Neon.

