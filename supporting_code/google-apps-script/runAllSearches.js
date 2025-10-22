function runAllSearches() {
  var apiKey = ""; // Replace with your actual API key within the "", e.g. "b2391932kss"

 // @param {string} searchName - The name of the saved search in CiviCRM.
 // @param {string} sheetName - The name of the sheet in the Google Spreadsheet where data should be written. Does not need to exist when executed
 // @param {string} apiKey - Your CiviCRM API key.

  fetchSavedSearch("geschlecht_statistik", "Geschlechtsverteilung", apiKey);

  // Example: Fetch another search and write to a different sheet
  fetchSavedSearch("Bundesland", "Bundeslandverteilung2", apiKey);
}