---
title: Quiz — Pragmata
---

{% include menu.html %}

Pragma `strict` in Raku ex defectu activum est. Quid accidit si variabili assignas quam numquam declaravisti, ut in `$x = 42`?

{:.quiz}
1 | Error tempore compilationis est
0 | Silenter `$x` creat
0 | Admonitionem imprimit sed currit
0 | `$x` ad `Nil` statuit

{% include quiz.html %}

<div class="extended-explanation">

`strict` ex defectu activum est. Requirit ut omnem variabilem prius cum `my` declares. Ergo `$x = 42` sine `my` compilari non potest. Error est *Variable '$x' is not declared*. Si pragma cum `no strict` deactivas, assignatio operatur.

</div>

{% include nav.html %}
