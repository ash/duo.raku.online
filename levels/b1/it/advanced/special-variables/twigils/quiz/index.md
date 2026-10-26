---
title: Quiz — Twigil
---

{% include menu.html %}

Quale twigil indica una variabile **dinamica**, che Raku trova attraverso lo stack delle chiamate?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

Il twigil `*` indica una variabile dinamica, per esempio `$*OUT` o `$*greeting`. Il twigil `?` è per i valori in fase di compilazione, e `!` è per un attributo privato. Il twigil `.` è per l'accessore di un attributo.

</div>

{% include nav.html %}
