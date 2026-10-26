---
title: 'Quiz — Hyper and cross'
---

{% include menu.html %}

What does this program print?

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

The hyper meta-operator `»+»` uses `+` on every element. On the right, there is only one value, `10`. Raku uses this value for the whole list. So each element gets `10` more: `(11 12 13)`. A reduction `[+]` works in another way. It turns the list into one sum, `6`.

</div>

{% include nav.html %}
