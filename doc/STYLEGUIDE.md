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
- requirement A setup # only add a link to the tools chapter when there is an explanation on how to fulfill this requirement
- requirement B

## Instruction
├── Setup (Optional) # Steps that are not worth explaining in detail and are more on the preparation side
├── A: Title Step A
│   ├── 1. Sub-Step
│   │   ├── Option 1a
│   │   └── Option 1b
├── B: Title Step B
│   ├── 1. Sub-Step 1
│   └── 2. Sub-Step 2
├── C: Title Step C
└── ...
```

- Instructions should be written in a sequential form

### Tools Structure

either references one tool or an overview over different tools of a category. 


```
# Title (of tool or category)

Reference to the stage of the datenlebenszyklus

introduction

Subtitle (optional)

- description of the tool
- advantages
- disadvantages
- summary
- instructions (optional)

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