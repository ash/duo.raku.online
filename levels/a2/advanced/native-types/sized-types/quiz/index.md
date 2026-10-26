---
title: 'Quiz — Overflow'
---

{% include menu.html %}

What does this program print?

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

An `int8` holds values from `-128` to `127`. Values also wrap around at the bottom. Take the smallest value and decrement it. You cannot get `-129`. So the value wraps around to the largest value, `127`.

</div>

{% include nav.html %}
