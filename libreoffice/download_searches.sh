
CRM_URL='https://civicrm.correlaid.org/civicrm/ajax/api4/SearchDisplay/download'
CRM_AUTH='X-Civi-Auth: Bearer YOUR_API_KEY'

# List of searches to process
SEARCHES=(
  "geschlecht_statistik"
  "another search"
)

# Loop through each search
for SEARCH in "${SEARCHES[@]}"; do
  echo "Fetching data for search: $SEARCH"
  curl -X POST -H "$CRM_AUTH" "$CRM_URL" \
    -d "params={\"format\":\"csv\",\"savedSearch\":\"$SEARCH\"}" \
    > "$SEARCH.csv"

    # TODO Error handling 
done
