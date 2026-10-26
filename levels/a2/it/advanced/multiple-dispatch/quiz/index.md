---
title: Quiz — Dispatch con `where`
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

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

La condizione `where $n %% 2` è vera per `4`. Quindi Raku sceglie il candidato più specifico. Questo stampa `even`. L'altro candidato ha solo `Int`. Prende tutti i valori che non rispettano la condizione.

</div>

{% include nav.html %}
