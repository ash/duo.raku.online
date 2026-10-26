---
title: Quiz — Bloci sagittati
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Cuspis acuta plures parametros enumerare potest: `-> $a, $b` duos accipit. Hic cuspis in variabili omnino non servatur. In parenthesibus ponitur et statim cum `(3, 4)` vocatur. Itaque `$a` accipit `3`, et `$b` accipit `4`. Cuspis eos multiplicat et `12` dat, et `.say` in fine id imprimit.

</div>

{% include nav.html %}
