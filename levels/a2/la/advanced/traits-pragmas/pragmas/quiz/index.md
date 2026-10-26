---
title: Quiz — Pragmata
---

{% include menu.html %}

In Raku pragma `strict` ex defectu activum est. Variabilem non declaras, sed ei valorem assignas. Exempli gratia, `$x = 42`. Quid accidit?

{:.quiz}
1 | Error tempore compilationis est
0 | Silenter `$x` creat
0 | Admonitionem imprimit sed currit
0 | `$x` ad `Nil` statuit

{% include quiz.html %}

<div class="extended-explanation">

`strict` ex defectu activum est. Cum eo omnem variabilem prius cum `my` declarare debes. Ergo Raku `$x = 42` sine `my` non compilat. Error est *Variable '$x' is not declared*. Cum `no strict` pragma non activum est. Tum assignatio operatur.

</div>

{% include nav.html %}
