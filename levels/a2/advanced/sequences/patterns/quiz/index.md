---
title: 'Quiz — The `...` operator'
---

{% include menu.html %}

What does this program print?

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

Here, there are *three* seed values. So `...` looks at the ratio between them. This is how many times bigger each value is. In `1, 3, 9`, each value is three times the one before. So the sequence goes on as a geometric sequence: `27, 81`. With two seeds, you get an arithmetic step instead.

</div>

{% include nav.html %}
