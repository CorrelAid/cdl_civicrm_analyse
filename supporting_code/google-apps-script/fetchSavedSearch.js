/**
 * Fetches data from a CiviCRM saved search and writes it to a specified Google Sheet.
 *
 * @param {string} searchName - The name of the saved search in CiviCRM.
 * @param {string} sheetName - The name of the sheet in the Google Spreadsheet where data should be written.
 * @param {string} apiKey - Your CiviCRM API key.
 */
function fetchSavedSearch(searchName, sheetName, apiKey) {
  var apiUrl = "https://civicrm.correlaid.org/civicrm/ajax/api4/SearchDisplay/download";

  var payload = {
    "params": JSON.stringify({
      "format": "csv",
      "savedSearch": searchName
    })
  };

  var options = {
    "method": "post",
    "headers": {
      "X-Civi-Auth": "Bearer " + apiKey,
      "Content-Type": "application/x-www-form-urlencoded"
    },
    "payload": payload,
    "muteHttpExceptions": true
  };

  try {
    var response = UrlFetchApp.fetch(apiUrl, options);
    var responseCode = response.getResponseCode();
    var responseText = response.getContentText();

    console.log("Response Code: " + responseCode);
    console.log("Response Text: " + responseText);

    if (responseCode === 200) {
      var csvData = Utilities.parseCsv(responseText);
      var spreadsheet = SpreadsheetApp.getActiveSpreadsheet();
      var sheet = spreadsheet.getSheetByName(sheetName);

      if (!sheet) {
        sheet = spreadsheet.insertSheet(sheetName);
      }

      sheet.clearContents();

      if (csvData && csvData.length > 0) {
        sheet.getRange(1, 1, csvData.length, csvData[0].length).setValues(csvData);
        console.log("Data successfully written to the sheet: " + sheetName);
      } else {
        console.log("No data received.");
      }
    } else {
      console.log("Error: " + responseCode + " - " + responseText);
      throw new Error("API request failed with status code: " + responseCode);
    }
  } catch (error) {
    console.log("An error occurred: " + error.toString());
  }
}