---
title: Quiz — La chiamata con due punti
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

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

I due punti prendono *tutto* il resto dell'istruzione. Tutto questo diventa la lista degli argomenti. Quindi `substr: 0, 3` è uguale a `substr(0, 3)`. Entrambi gli argomenti vanno a `substr`. Parte dall'indice `0` e prende `3` caratteri. Il risultato è `pro`.

</div>

{% include nav.html %}
