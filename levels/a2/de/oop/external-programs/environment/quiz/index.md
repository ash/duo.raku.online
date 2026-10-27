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

`%*ENV` ist der dynamische Hash mit den Umgebungsvariablen. Sie lesen eine Variable über ihren Namen, zum Beispiel `%*ENV<HOME>`. `@*ARGS` ist anders. Es enthält die Befehlszeilenargumente. Das sind die Werte nach dem Programmnamen im Befehl.

</div>

{% include nav.html %}
