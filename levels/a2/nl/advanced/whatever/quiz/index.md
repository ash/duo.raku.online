---
title: 'Quiz — De Whatever-ster'
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

In een subscript is de ster op zichzelf het aantal elementen. Hier is dat `5`. Dus is `*-2` de index `3`. We tellen vanaf nul. Het element op index `3` is `8`.

</div>

{% include nav.html %}
