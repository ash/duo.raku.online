---
title: Quiz — Dispatch con `where`
translations_gpt:
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

`4` rispetta la condizione `where $n %% 2`. Quindi Raku sceglie il candidato più specifico, che stampa `even`. Il candidato con un semplice `Int` raccoglie tutto ciò che non rispetta la condizione.

</div>

{% include nav.html %}
