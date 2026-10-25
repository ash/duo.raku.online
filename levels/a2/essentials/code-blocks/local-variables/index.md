---
title: Local variables
---

{% include menu.html %}

Now you create a variable in the global scope. You also create it locally, inside the block. What happens then?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Now there are two variables in the program. They have the same name. But they are different variables. In the global scope, every `$x` is the global variable. Inside the block, `$x` is a local variable. It is not the global `$x`. The program prints two different values:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
