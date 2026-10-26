---
title: 'Quiz — The `...` operator'
---

{% include menu.html %}

What does the following program print?

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

With *three* seed values, `...` looks at the ratio between them. In `1, 3, 9`, each value is three times the one before. So the sequence continues as a geometric one: `27, 81`. With two seeds, it would set an arithmetic step instead.

</div>

{% include nav.html %}
