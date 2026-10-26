---
title: 'Quiz — Sets'
---

{% include menu.html %}

What does this program print?

```raku
say (set(1, 2) ∪ set(2, 3)).elems;
```

{:.quiz}
1 | 3
0 | 4
0 | 2
0 | 1

{% include quiz.html %}

<div class="extended-explanation">

The union takes every value from both sets. But a set keeps each value only once. The value `2` is in both sets. So the union is `{1, 2, 3}`. It has three distinct elements.

</div>

{% include nav.html %}
