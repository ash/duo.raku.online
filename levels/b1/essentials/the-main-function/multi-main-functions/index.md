---
title: Multi MAIN functions
---

{% include menu.html %}

Like any other function in Raku, the `MAIN` function can have `multi` variants. With them, the program can react to each case in its own way. The cases can differ in the number of input parameters or in their types.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

If there is only one argument, this program doubles it. If there is a second argument, the program adds the two together:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
