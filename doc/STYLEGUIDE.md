## General Instructions

- Write in German and use “du” or “ihr”

### Bold Font

- Highlight important text parts with bold font, but use it sparingly
- Do not use bold font in links

## Images/Screenshots

- Images follow the chapters structure including one folder per page
- Name the screenshot after the page and add 1-2 words as description

## Sections

- Two main types of pages: Ansätze und Tools
- Ansätze and Tools can have sub-chapters based on the type of tool (e.g., CiviCRM-interne Tools) or multiple tools can be summarized on one page

### Use Case Structure

```
# Title
Subtitle (description of the use case)

Reference to the datenlebenszyklus
├── Stage 1: Link Tool A, Link Tool B
├── Stage 2: LinkTool C
└── Stage 3: Link Tool D

## Voraussetzungen
- Link requirement setup/explanation on page of Tool A
- Other Requirement

## Anleitung
├── Setup (Optional)
├── Step 1
├── Step 2
└── ...
```

### Tools Structure

```
# Title
 Subtitle (description of the tool)
### Reference to the stage of the datenlebenszyklus
### Voraussetzungen
### Anleitung
├── Setup
├── Step 1
├── Step 2
└── ...
```

## Other Formatting Elements

### Admonishments

- As explained and demonstrated on the introduction page, use admonishments for important or relevant notes
- Use footnotes (e.g., `[^note-powerquery]`) for less important notes


### Quotes

- Use quote admonisments for quotes (see introduction page)
- Add source as footnote

```markdown

\```admonish quote
Hier zitieren wir etwas und nennen die Quelle in den Fußnoten.[^example]
\```

[^example]: [Beispielquelle](https://example.com)
```

### Code

- Write code in code blocks and specify code language

```bash
curl -X POST -H "$CRM_AUTH" "$CRM_URL" \
-d 'params=%7B%22limit%22%3A25%7D'
```
- Or inline with `code`, e.g. for references to code objects