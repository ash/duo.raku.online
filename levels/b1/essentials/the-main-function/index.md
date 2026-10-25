---
title: The MAIN function
---

{% include menu.html %}

A Raku program does not need any standard code that you must always write. So you can start writing useful instructions right away. This part of the program lies outside all [code blocks](/essentials/code-blocks), including [functions](/essentials/functions), for example. It is called the _mainline_.

If a program has a function with the special name `MAIN`, Raku runs it last. This happens after Raku compiles everything and after it runs the mainline code.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

This program first runs the `say`s at the top level and then calls `MAIN`:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Of course, a program can also have the `MAIN` function and no other mainline code.

{% include nav.html %}
