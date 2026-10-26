---
title: 'Quiz — Precedence'
---

{% include menu.html %}

What does this program print?

```raku
say 2 * 3 ** 2;
```

{:.quiz}
1 | 18
0 | 36
0 | 12
0 | 81

{% include quiz.html %}

<div class="extended-explanation">

`**` has higher precedence than `*`. So Raku calculates the power first: `3 ** 2` is `9`. Then `2 * 9` is `18`. Do not read it from left to right as `(2 * 3) ** 2`. That gives the wrong answer, `36`.

</div>

{% include nav.html %}
