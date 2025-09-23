# Managed Datenbank

<!-- tags: civicrm; daten-organisieren; komponenten-verbinden -->


- UI management (create tables etc.): Neon, Supabase
- serverless/file-based/in-memory database makes sense because db is not queried often: https://neon.com (can be deployed in the eu/germany)
- Alternatives: 
    - https://www.scaleway.com/en/serverless-sql-database/
    - https://neon.com
    - https://supabase.com/
    - https://elest.io/open-source/postgresql

### Neon

Neon ist eine serverless Postgres Datenbank, die sich im Browser über eine GUI verwalten lässt. Eine Funktion ist das Erstellen von Tabellen, in die man anschließend Daten laden kann.