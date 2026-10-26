---
title: Quiz — L'operatore `...`
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

Con *tre* valori iniziali, `...` guarda il rapporto tra di loro. In `1, 3, 9`, ogni valore è tre volte quello precedente. Quindi la sequenza continua come sequenza geometrica: `27, 81`. Con due valori iniziali, invece, imposterebbe un passo aritmetico.

</div>

{% include nav.html %}
