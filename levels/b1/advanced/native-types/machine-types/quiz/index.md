---
title: 'Quiz — Native types'
---

{% include menu.html %}

What does the following program print?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

When you ask a native value about itself, Raku automatically *boxes* it. The value goes into the matching full type. Here, `$n` is declared as a native `int`. But `.^name` still reports its type as the boxed `Int`.

</div>

{% include nav.html %}
