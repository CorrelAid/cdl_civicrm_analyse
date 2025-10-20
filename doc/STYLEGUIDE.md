## General Instructions

- Write in German and use "du" or "ihr"

### Bold Font

- Highlight important text parts with bold font, but use it sparingly
- Do not use bold font in links

## Images/Screenshots

- Images follow the chapters structure including one folder per page
- Name the screenshot after the page and add 1-2 words as description

## Sections

- Two main types of pages: Ansätze und Tools
- Ansätze and Tools can have sub-chapters based on the type of tool (e.g., CiviCRM-interne Tools) or multiple tools can be summarized on one page

### Ansätze Structure

- Title + subtitle (description of the ansatz)
- Reference to the datenlebenszyklus with used tools referenced behind the fitting stage

### Tools Structure

- Reference to the stage of the datenlebenszyklus per tool

## Other Formatting Elements

### Notes

- Use HTML div tags for creating side notes and important warnings
    - `class="warning"` for warnings
- Use footnotes (e.g., `[^note-powerquery]`) for less important notes

### Quotes

- Format quotes with `>`
- Add source as footnote
- Example:

```markdown
> CiviCRM has a stable, comprehensive API (Application Programming Interface)...[^note]

...

[^note]: [https://docs.civicrm.org/dev/en/latest/api/](https://docs.civicrm.org/dev/en/latest/api/)
```

### Code

- Write code in code blocks
    - Specify code language
    - Example:

    ```bash
    curl -X POST -H "$CRM_AUTH" "$CRM_URL" \
    -d 'params=%7B%22limit%22%3A25%7D'
    ```
- Or inline with `code`, e.g. for references to code objects