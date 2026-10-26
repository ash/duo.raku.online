---
title: 'Quiz — Contexts'
---

{% include menu.html %}

What does this program print?

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

The prefix `+` sets numeric context. As a number, an array is the number of its elements. So `+@a` is `3`. It is not the sum. For string context, use `~`. It gives `10 20 30`. To add up the elements, use `[+]`.

</div>

{% include nav.html %}
