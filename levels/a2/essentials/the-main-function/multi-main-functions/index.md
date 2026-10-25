---
title: Multi MAIN functions
---

{% include menu.html %}

Like any other function in Raku, `MAIN` can have `multi` variants. So the program can react to different input in different ways. The input can have a different number of parameters. Or the parameters can have different types.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

With one argument, this program doubles it. With two arguments, it adds them together:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
