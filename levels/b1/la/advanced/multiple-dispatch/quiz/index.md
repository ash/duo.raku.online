---
title: 'Quiz — Dispatch cum `where`'
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

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

`4` condicioni `where $n %% 2` satisfacit. Itaque Raku candidatum specificiorem eligit, qui `even` imprimit. Candidatus cum simplici `Int` omnia capit quae condicioni non satisfaciunt.

</div>

{% include nav.html %}
