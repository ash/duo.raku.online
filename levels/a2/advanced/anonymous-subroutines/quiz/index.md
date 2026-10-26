---
title: 'Quiz — Pointy blocks'
---

{% include menu.html %}

What does this program print?

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

A pointy block can have several parameters. `-> $a, $b` takes two. Here, the program does not keep the block in a variable. The block is in parentheses. The program calls it at once with `(3, 4)`. So `$a` gets `3`, and `$b` gets `4`. The block multiplies them. The result is `12`. Then `.say` at the end prints it.

</div>

{% include nav.html %}
