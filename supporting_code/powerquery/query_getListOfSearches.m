// Power Query to get a list of all power Queries that the user has access to
let
    // Define the API endpoint and headers
    apiUrl = "https://civicrm.correlaid.org/civicrm/ajax/api4/SavedSearch/get",
    headers = [
        #"X-Civi-Auth" = Text.Combine({ "Bearer", CiviToken}, " "), 
        #"Content-Type" = "application/x-www-form-urlencoded",
        #"X-Requested-With" = "XMLHttpRequest"
    ],
    // Define the POST body
    body = """{""limit"":25, ""select"": [""name""], ""where"": [[""created_id"", ""IS NOT NULL""]]}""",

    response = Web.Contents(
        apiUrl,
        [
            Headers = headers,
            Content = Text.ToBinary(body)
        ]
    ),
    // Convert the response to text
    responseText = Text.FromBinary(response),
    // Parse the CSV response (if successful)
    csvData = Json.Document(
        responseText
    ),
  
    names = List.Transform(csvData[values], each _[name])

in
    names