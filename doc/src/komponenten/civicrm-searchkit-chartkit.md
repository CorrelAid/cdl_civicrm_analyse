# CiviCRM SearchKit & ChartKit


## SearchKit

<!-- tags: civicrm; daten-auswerten -->


CiviCRM [SearchKit](https://docs.civicrm.org/user/en/latest/searching/searchkit/what-is-searchkit/) ist eine Erweiterung für CiviCRM, die es Nutzer\*innen ermöglicht, komplexe Abfragen an ihre Daten zu stellen. Als Nutzer\*in kann man filtern, aggregieren, Felder auswählen und gruppieren. 

SearchKit erfordert etwas Einarbeitung, aber dann ist es eine gute und mächtige Option um innerhalb von CiviCRM Daten (deskriptiv) auszuwerten.

Wir arbeiten in unseren Beispielen mit einer einfachen Darstellung der Geschlechterverteilung. Diese Suche kann über SearchKit -> Import importiert werden.

```
[
  [
    "SavedSearch",
    "save",
    {
      "records": [
        {
          "name": "geschlecht_statistik",
          "label": "geschlecht statistik",
          "api_entity": "Contact",
          "api_params": {
            "version": 4,
            "select": [
              "COUNT(id) AS COUNT_id",
              "gender_id:label"
            ],
            "orderBy": [],
            "where": [
              [
                "gender_id:name",
                "IS NOT EMPTY"
              ]
            ],
            "groupBy": [
              "gender_id"
            ],
            "join": [],
            "having": []
          }
        }
      ],
      "match": [
        "name"
      ]
    }
  ]
]
```

## ChartKit

