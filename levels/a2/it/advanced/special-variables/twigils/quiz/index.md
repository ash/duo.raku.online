---
title: Quiz — Twigil
---

{% include menu.html %}

Raku trova una variabile **dinamica** nello stack delle chiamate. Quale twigil mostra che una variabile è dinamica?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

Il twigil `*` mostra una variabile dinamica, come in `$*OUT` o `$*greeting`. Il twigil `?` è per i valori in fase di compilazione. `!` è per un attributo privato. E `.` è per l'accessore di un attributo.

</div>

{% include nav.html %}
