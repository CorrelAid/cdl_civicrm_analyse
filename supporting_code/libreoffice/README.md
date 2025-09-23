# Teilautomatisierte Updates - lokale Analyse

Modus: lokale Analyse
CiviCRM-Funktionalität: SearchKit
Externe Programme: LibreOffice, bash oder Powershell oder Python...

Idee: 
- SearchKit für Suche, Aggregation etc. 
- API um Suchergebnisse zu downloaden 
- Skript (z.B. bash, Powershell, Python, R) um Download on Demand durchzuführen
- Das Skript lädt die Suchergebnisse herunter als csv Dateien und legt sie im Ordner ab
- wir verwenden die External Links Funktionalität von LibreOffice um die Daten in die `ods` Datei reinzuziehen und mit den csv Dateien zu verknüpfen:
    - [Einrichtung](https://help.libreoffice.org/latest/en-US/text/scalc/01/04090000.html)
    - [Updaten](https://help.libreoffice.org/latest/en-US/text/shared/01/02180000.html) -> Edit -> External Links -> Update
