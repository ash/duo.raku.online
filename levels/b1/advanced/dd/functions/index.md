---
title: Dumping function signatures
---

{% include menu.html %}

You can call a bare `dd`, with no arguments, inside a subroutine. Then it prints the signature of that subroutine. This is its name and the list of parameters, if it has any. Look at the following example with two subroutines:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

The program prints the signatures, not any values:

```console
sub f1()
sub f2($x)
```

This is especially useful with multi-functions, as it shows which variant was really called:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Each time, the output shows the matching variant:

```console
sub g()
sub g($x)
```

{% include nav.html %}
