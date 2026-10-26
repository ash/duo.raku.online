---
title: Quiz — Operatorem definire
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` novum operatorem definit. Eum inter duos operandos suos scribis. Corpus eius eos multiplicat. Ergo `6 times 7` dat `42`. Operator tantum subroutina cum nomine speciali est.

</div>

{% include nav.html %}
