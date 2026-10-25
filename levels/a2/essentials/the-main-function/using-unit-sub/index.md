---
title: Using unit sub
---

{% include menu.html %}

With `unit sub`, the rest of the file becomes the body of the function! This is very useful with `MAIN`. Without it, curly braces go around almost the whole file. With `unit sub`, you do not need these braces. Also, the lines need no extra spaces at the start.

Here is an example program with `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "The sum of $a and $b is $sum.";
```

In this file, `MAIN` is the only function. Is this true for your program too? Then try to use `unit sub MAIN`, as in the example above.

{% include nav.html %}
