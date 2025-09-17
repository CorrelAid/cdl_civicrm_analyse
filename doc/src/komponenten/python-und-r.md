# Python und R

## Python

## R
<div id="tags-container"></div>

<script>
    // Array of tag texts you want to add
    const tagTexts = ["nextline", "another tag", "yet another tag"];

    // Get the container where you want to add the spans
    const container = document.getElementById('tags-container');

    // Loop through the array and create a span for each text
    tagTexts.forEach(text => {
        const span = document.createElement('span');
        span.className = 'tag-post tag-name';
        span.textContent = text;
        container.appendChild(span);
    });
</script><span class="tag-post tag-name">nextline</span><span class="tag-post tag-name">nextline</span>