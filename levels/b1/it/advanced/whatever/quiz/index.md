---
title: Quiz — La stella Whatever
translations_gpt: true
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

In un indice, la stella `*` da sola rappresenta il numero di elementi. Qui questo numero è `5`. Quindi `*-2` è l'indice `3`. L'elemento all'indice `3`, contando da zero, è `8`.

</div>

{% include nav.html %}
