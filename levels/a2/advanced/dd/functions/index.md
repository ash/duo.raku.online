---
title: Dumping function signatures
---

{% include menu.html %}

Sometimes you call `dd` with no arguments inside a subroutine. Then `dd` prints the signature of the subroutine. This is its name and its parameters, if it has any. Look at this example with two subroutines:

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

The program prints the signatures. It does not print any values:

```console
sub f1()
sub f2($x)
```

This is very useful with multi-functions. These are several functions with the same name. Here, `dd` tells you which variant the program really calls:

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

Each time, the output names the variant that matches:

```console
sub g()
sub g($x)
```

{% include nav.html %}
