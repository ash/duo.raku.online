---
title: 'Quiz — Overflow'
---

{% include menu.html %}

What does the following program print?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

An `int8` holds values from `-128` to `127`. Values wrap around at the bottom edge too. If you decrement the smallest value, you cannot get `-129`. So it goes around to the largest value, `127`.

</div>

{% include nav.html %}
