---
title: 'Quiz — Hyper and cross'
---

{% include menu.html %}

What does the following program print?

```raku
say (1, 2, 3) »+» 10;
```

{:.quiz}
1 | (11 12 13)
0 | (11 2 3)
0 | 16
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

The hyper meta-operator `»+»` applies `+` to every element. There is only one value on the right, `10`. So it is stretched over the whole list. Each element gets `10` more: `(11 12 13)`. A reduction `[+]` would instead turn the list into a single sum, `6`.

</div>

{% include nav.html %}
