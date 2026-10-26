---
title: Quiz — Stella Whatever
translations_gpt:
---

{% include menu.html %}

Quid haec programma imprimit?

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

In indice `*` per se numerum elementorum repraesentat. Hic is numerus est `5`. Itaque `*-2` est index `3`. Elementum ad indicem `3`, a zero numerando, est `8`.

</div>

{% include nav.html %}
