---
title: 'Quiz — Statement prefixes'
---

{% include menu.html %}

What does the following program print?

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

When you add `10` to the undefined `$v`, Raku treats it as `0` and gives `10`. Normally there would also be an “uninitialized value” warning. But the `quietly` prefix hides it, so only `10` is printed.

</div>

{% include nav.html %}
