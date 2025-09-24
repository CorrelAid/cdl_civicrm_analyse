# CiviCRM API + Automation + Managed DB + Metabase

```mermaid
flowchart TB
    subgraph CiviCRM
        API[API]
    end

    subgraph ETL[Automation Tool Knoten]
        Retrieve[Daten Anfragen]
        Process[Daten verarbeiten]
        Load[Daten in die DB laden]

        Retrieve --> Process --> Load
    end

    ExtDB[(Managed DB)]
    Metabase[Metabase]

    ETL -->|Modelliert in API Explorer| API
    ETL --> ExtDB
    Metabase --> ExtDB 

```

Bei dem hier vorgestellten Ansatz werden die Daten über die [API](../../tools/civicrm_intern/3-civicrm-api.md) bezogen, während der [Datenorganisationsschritt](../../datenlebenszyklus.html#daten-organisieren)  bzw. das **Data Modelling**, also z.B. die Auswahl der Datenfelder oder Aggregation einmalig über den [API Explorer](../../tools/civicrm_intern/3-civicrm-api.html#api-explorer) geschieht. Wie [hier](../../tools/civicrm_intern/3-civicrm-api.html#api-explorer) beschrieben, lassen sich die notwendigen Parameter über eine GUI generieren und kopieren. 

Die eigentliche API-Anfrage geschieht schließlich im [Workflow Automation Tool](../../tools/workflow-tools.md), das die Rolle der **Data Orchestration** erfüllt. Hier kann der Output des Requests auch verarbeitet werden, sodass die Daten anschließend in die externe [managed Datenbank](../../tools/managed-datenbank.md), das **Data Warehouse**, geladen werden kann. An diese Datenbank kann dann [Metabase](../../tools/bi-tools.md) angeschlossen werden, um die Daten zu visualisieren.

Diesen Ansatz wird anhand von zwei Use Cases veranschaulicht, bei denen jeweils eines der zwei ausgewählten Workflow Automation Tools verwendet wird. Zuerst erklären wir, wie man mit [n8n](../../tools/workflow-tools.html#n8n) durch das Duplizieren eines Datenausschnitts die Datengrundlage für die Visualisierung einfacher deskriptive Statistiken schaffen kann. 

Danach wird der komplexere Use-Case der Visualisierung von Spendendewanderungen thematisiert. Nachdem notwendige Daten aggregiert in einem API-Request aggregiert wurden, geschieht dies mithilfe von [Kestra](../../tools/workflow-tools.html#kestra).