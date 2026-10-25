---
title: Global variables
---

{% include menu.html %}

Now we create a variable before the code block:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Here, `$x` is a global variable. It is in the global scope. The whole program can use it. The program prints `42` two times.

{% include nav.html %}
