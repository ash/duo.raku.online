---
title: Quiz — Blocchi pointy
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

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

Un blocco a freccia può avere più parametri. `-> $a, $b` ne prende due. Qui il programma non tiene il blocco in una variabile. Il blocco è tra parentesi. Il programma lo chiama subito con `(3, 4)`. Così `$a` riceve `3` e `$b` riceve `4`. Il blocco li moltiplica. Il risultato è `12`. Poi il `.say` alla fine lo stampa.

</div>

{% include nav.html %}
