---
title: 'Quiz — Prefix or postfix'
---

{% include menu.html %}

You have seen `++` *after* a variable, as a postfix. You can also write it *before* the variable. What category is `++` in `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

The category depends only on the *position*. In `++$x`, the operator comes before its one operand, so it is a **prefix** operator. The very same `++` is a postfix when it comes after, as in `$x++`. Both forms increase `$x` by one. The prefix form returns the new value, so this prints `6`.

</div>

{% include nav.html %}
