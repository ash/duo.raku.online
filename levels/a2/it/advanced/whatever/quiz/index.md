---
title: Quiz — La stella Whatever
translations_gpt: true
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my @a = 5, 6, 7, 8, 9;
say @a[*-2];
```

{:.quiz}
1 | 8
0 | 7
0 | 9
0 | 3

{% include quiz.html %}

<div class="extended-explanation">

In un indice, la stella da sola è il numero di elementi. Qui è `5`. Quindi `*-2` è l'indice `3`. Contiamo da zero. L'elemento all'indice `3` è `8`.

</div>

{% include nav.html %}
