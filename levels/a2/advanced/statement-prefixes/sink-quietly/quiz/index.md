---
title: 'Quiz — Statement prefixes'
---

{% include menu.html %}

What does this program print?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | A warning, then 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`$v` is undefined. When you add `10` to it, Raku uses `0` for `$v`. So the result is `10`. Usually, there is also a warning: “uninitialized value”. But the `quietly` prefix hides it. So the program prints only `10`.

</div>

{% include nav.html %}
