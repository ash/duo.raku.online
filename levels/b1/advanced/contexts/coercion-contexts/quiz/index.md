---
title: 'Quiz — Contexts'
---

{% include menu.html %}

What does the following program print?

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

The `+` prefix sets numeric context. The numeric value of an array is the number of its elements. So `+@a` is `3` and not the sum. Use `~` for string context, which gives `10 20 30`. To really add the elements together, use `[+]`.

</div>

{% include nav.html %}
