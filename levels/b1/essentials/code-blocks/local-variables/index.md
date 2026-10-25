---
title: Local variables
---

{% include menu.html %}

Let us declare a variable in the global scope. What happens if we also declare it locally in the block?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Now there are two separate variables in the program. Both are called `$x`. In the global scope, `$x` always means the global variable. But inside the block, `$x` is a different, local variable. The program prints two different values:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
