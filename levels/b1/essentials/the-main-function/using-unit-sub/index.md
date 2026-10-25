---
title: Using unit sub
---

{% include menu.html %}

The `unit sub` construct is very handy. It makes the rest of the file the body of the function! With `MAIN`, it lets you remove the curly braces around almost the whole file. You also do not need the extra indentation.

The following example program shows how to use `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "The sum of $a and $b is $sum.";
```

In this file, `MAIN` is the only function. If the same is true for your program, think about using `unit sub MAIN` as shown above.

{% include nav.html %}
