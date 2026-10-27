---
title: 'Quiz — De omgeving'
translations_gpt:
---

{% include menu.html %}

Welke variabele bevat de omgevingsvariabelen van het programma?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` is de dynamische hash met omgevingsvariabelen. Je leest een variabele via haar naam, zoals in `%*ENV<HOME>`. `@*ARGS` bevat daarentegen de opdrachtregelargumenten.

</div>

{% include nav.html %}
