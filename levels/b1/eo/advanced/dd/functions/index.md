---
title: Dumpado de funkciaj subskriboj
---

{% include menu.html %}

Vi povas voki nudan `dd`, sen argumentoj, ene de subrutino. Tiam ĝi presas la signaturon de tiu subrutino. Tio estas ĝia nomo kaj la listo de parametroj, se ĝi havas iujn. Rigardu la jenan ekzemplon kun du subrutinoj:

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

La programo presas la signaturojn, ne valorojn:

```console
sub f1()
sub f2($x)
```

Tio estas speciale utila kun plur-funkcioj, ĉar ĝi montras, kiu varianto estis vere vokita:

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

Ĉiufoje, la eligo montras la kongruan varianton:

```console
sub g()
sub g($x)
```

{% include nav.html %}
