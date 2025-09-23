let
    Source = (SearchName as text) as table =>
let
    // Define the API endpoint and headers
    apiUrl = "https://civicrm.correlaid.org/civicrm/ajax/api4/SearchDisplay/download",
    headers = [
        #"X-Civi-Auth" = Text.Combine({ "Bearer", CiviToken}, " "), 
        #"Content-Type" = "application/x-www-form-urlencoded",
        #"X-Requested-With" = "XMLHttpRequest"
    ],
    // Define the POST body
    body = [
        params = Text.FromBinary(Json.FromValue([savedSearch=SearchName, format="csv"]))
    ],

    response = Web.Contents(
        apiUrl,
        [
            Headers = headers,
            Content = Text.ToBinary(Uri.BuildQueryString(body))
        ]
    ),
    // Convert the response to text
    responseText = Text.FromBinary(response),
    // Parse the CSV response (if successful)
    csvData = Csv.Document(
        responseText,
        [Delimiter=",", Encoding="1252", QuoteStyle=QuoteStyle.None]
    ),

    // Promote headers
    csvDataTable = Table.PromoteHeaders(csvData, [PromoteAllScalars=true])

  in
    csvDataTable
in
    Source