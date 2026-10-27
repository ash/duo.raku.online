---
title: 'Quiz — Die Umgebung'
translations_gpt:
---

{% include menu.html %}

Welche Variable enthält die Umgebungsvariablen des Programms?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` ist der dynamische Hash der Umgebungsvariablen. Sie lesen eine Variable über ihren Namen, wie in `%*ENV<HOME>`. `@*ARGS` dagegen enthält die Befehlszeilenargumente.

</div>

{% include nav.html %}
