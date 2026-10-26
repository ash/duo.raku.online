---
title: 'Quiz — Prefix or postfix'
---

{% include menu.html %}

You have seen `++` *after* a variable. There, it is a postfix. You can also write it *before* a variable. What is the category of `++` in `++$x`?

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

Only the *position* decides the category. In `++$x`, the operator stands before its one operand. So it is a **prefix** operator. Write the same `++` after it, like in `$x++`. Then it is a postfix. Both forms add 1 to `$x`. The prefix form returns the new value. So the program prints `6`.

</div>

{% include nav.html %}
