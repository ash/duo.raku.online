---
title: Quiz — Blocchi pointy
translations_gpt:
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

Un blocco a freccia può elencare più parametri: `-> $a, $b` ne prende due. Qui il blocco non viene salvato in nessuna variabile. Viene messo tra parentesi e chiamato subito con `(3, 4)`. Così `$a` riceve `3` e `$b` riceve `4`. Il blocco li moltiplica e dà `12`, e il `.say` alla fine lo stampa.

</div>

{% include nav.html %}
