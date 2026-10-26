---
title: Quiz — gist e Str
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` dà la forma stringa semplice. Tra gli elementi ci sono solo spazi. Non ci sono parentesi: `1 2 3`. La forma con parentesi, `[1 2 3]`, viene da `.gist`. Per questo anche `say @a` la stampa.

</div>

{% include nav.html %}
