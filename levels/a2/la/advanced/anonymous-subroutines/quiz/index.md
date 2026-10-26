---
title: Quiz — Bloci sagittati
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
(-> $a, $b { $a * $b })(3, 4).say
```

{:.quiz}
1 | 12
0 | 7
0 | 34
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Cuspis acuta plures parametros habere potest. `-> $a, $b` duos accipit. Hic programma cuspidem in variabili non servat. Cuspis in parenthesibus est. Programma eam statim cum `(3, 4)` vocat. Itaque `$a` accipit `3`, et `$b` accipit `4`. Cuspis eos multiplicat. Exitus est `12`. Tum `.say` in fine id imprimit.

</div>

{% include nav.html %}
