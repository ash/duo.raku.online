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

`%*ENV` is de dynamische hash met de omgevingsvariabelen. Je leest een variabele via haar naam, zoals `%*ENV<HOME>`. `@*ARGS` is anders. Die bevat de opdrachtregelargumenten. Dat zijn de waarden na de programmanaam in het commando.

</div>

{% include nav.html %}
