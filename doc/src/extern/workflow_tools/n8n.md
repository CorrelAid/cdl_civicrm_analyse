## N8N: Data Warehouse Flow Option 
- Go to CiviCRM api explorer and add required where and select parameters (select can include fields from nested tables like email or gender)
- Create a table in UI database manager (create columns for selected fields, can be named differently)
- Create Flow in N8N with api request, edit fields node, split out node and postgres node