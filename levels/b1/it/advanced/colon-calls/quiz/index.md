---
title: Quiz — La chiamata con due punti
translations_gpt:
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

I due punti prendono *tutto* il resto dell'istruzione come lista degli argomenti. Quindi `substr: 0, 3` è uguale a `substr(0, 3)`, e vengono passati entrambi gli argomenti. Parte dall'indice `0` e prende `3` caratteri, e così si ottiene `pro`.

</div>

{% include nav.html %}
