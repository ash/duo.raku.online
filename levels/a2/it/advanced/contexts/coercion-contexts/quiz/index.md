---
title: Quiz — Contesti
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

Il prefisso `+` imposta il contesto numerico. Come numero, un array è il numero dei suoi elementi. Quindi `+@a` è `3`. Non è la somma. Per il contesto stringa, usa `~`. Dà `10 20 30`. Per sommare gli elementi, usa `[+]`.

</div>

{% include nav.html %}
