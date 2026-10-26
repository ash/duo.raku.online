---
title: 'Quiz — The Whatever star'
---

{% include menu.html %}

What does this program print?

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

In a subscript, the star alone is the number of elements. Here, it is `5`. So `*-2` is the index `3`. We count from zero. The element at index `3` is `8`.

</div>

{% include nav.html %}
