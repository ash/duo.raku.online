---
title: 'Quiz — Pointy blocks'
---

{% include menu.html %}

What does the following program print?

```raku
(-> $a, $b { $a * $b })(3, 4).say
```

{:.quiz}
1 | 12
0 | 7
0 | 34
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

A pointy block can list several parameters: `-> $a, $b` takes two. Here, the block is not stored in a variable at all. It is put in parentheses and called at once with `(3, 4)`. So `$a` gets `3`, and `$b` gets `4`. The block multiplies them and gives `12`, and the `.say` at the end prints it.

</div>

{% include nav.html %}
