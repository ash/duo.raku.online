---
title: The MAIN function
---

{% include menu.html %}

A Raku program does not need any special code at the start. So you can start with useful code at once. This code is not inside any [code block](/essentials/code-blocks). For example, it is not inside a [function](/essentials/functions). We call this part of the program the _mainline_.

A program can have a function with the special name `MAIN`. In this case, Raku first compiles everything. Next, it runs the mainline code. After that, it runs the `MAIN` function.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

First, this program runs the `say`s at the top level. Then it calls `MAIN`:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Of course, a program can also have only the `MAIN` function. Then it has no other mainline code.

{% include nav.html %}
