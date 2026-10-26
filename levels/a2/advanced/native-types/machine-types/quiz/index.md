---
title: 'Quiz — Native types'
---

{% include menu.html %}

What does this program print?

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

Ask a native value about itself, and Raku automatically *boxes* it. It puts the value into the matching full type. `$n` is declared as a native `int`. But `.^name` asks for its type name. So you get the boxed type, `Int`.

</div>

{% include nav.html %}
