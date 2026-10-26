---
title: 'Quiz — Dispatch cum `where`'
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Condicio `where $n %% 2` vera est pro `4`. Itaque Raku candidatum specificiorem eligit. Is `even` imprimit. Alter candidatus solum `Int` habet. Omnes valores capit qui condicioni non satisfaciunt.

</div>

{% include nav.html %}
