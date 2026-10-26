---
title: Quiz — L'operatore `...`
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
say 1, 3, 9 ... 81;
```

{:.quiz}
1 | (1 3 9 27 81)
0 | (1 3 9 81)
0 | (1 3 5 7 ... 81)
0 | (3 9 27)

{% include quiz.html %}

<div class="extended-explanation">

Qui ci sono *tre* valori iniziali. Quindi `...` guarda il rapporto tra di loro. Il rapporto dice quante volte ogni valore è più grande. In `1, 3, 9`, ogni valore è tre volte quello prima. Quindi la sequenza continua come sequenza geometrica: `27, 81`. Con due valori iniziali, invece, ottieni un passo aritmetico.

</div>

{% include nav.html %}
