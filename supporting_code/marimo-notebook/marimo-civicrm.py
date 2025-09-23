# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "marimo",
# ]
# ///

import marimo

__generated_with = "0.15.2"
app = marimo.App(width="medium", app_title="test")


@app.cell
def _():
    import marimo as mo 
    import requests
    import os
    import polars as pl
    import json
    from dotenv import load_dotenv
    from io import StringIO

    load_dotenv()
    return StringIO, json, mo, os, pl, requests


@app.cell(hide_code=True)
def _(mo):
    mo.md(
        r"""
    #Marimo Notebook
    Dieses Notebook demonstriert wie man ...
    """
    )
    return


@app.cell
def _(os, requests):
    def call_ajax_api(path, body, base_url = "https://civicrm.correlaid.org", api_key = os.getenv("CIVICRM_API_KEY")):
        api_url = f"https://civicrm.correlaid.org/civicrm/ajax/api4/{path}"
        headers = {
            "X-Civi-Auth": f"Bearer {api_key}",
            "X-Requested-With": "XMLHttpRequest"
        }
        response = requests.post(api_url, headers=headers, data=body)
        if response.status_code != 200:
            raise RuntimeError(f"❌ Error {response.status_code}: {response.text}")

        return(response)
    return (call_ajax_api,)


@app.cell
def _(call_ajax_api, json):
    response_searches = call_ajax_api("SavedSearch/get", {
      "params": json.dumps({
        "limit": 25
      })
    })


    searches = json.loads(response_searches.text)
    names = [s["name"] for s in searches["values"]]
    return (names,)


@app.cell
def _(mo, names):
    dropdown = mo.ui.dropdown(options=names, label="Suche auswählen")
    dropdown
    return (dropdown,)


@app.cell(hide_code=True)
def _(StringIO, call_ajax_api, dropdown, json, pl):
    data_download = {
        "params": json.dumps({"savedSearch": dropdown.value, "format":"csv"})
    }

    if dropdown.value is not None:
        response = call_ajax_api("SearchDisplay/download", data_download)

        csv_str = StringIO(response.text)
        data = pl.read_csv(csv_str)
        print(data)
    return (data,)


@app.cell
def _(data, mo):
    mo.ui.data_explorer(data)
    return


if __name__ == "__main__":
    app.run()
