---
title: Dumpado de funkciaj subskriboj
---

{% include menu.html %}

Foje vi vokas `dd` sen argumentoj ene de subrutino. Tiam `dd` presas la signaturon de la subrutino. Tio estas ĝia nomo kaj ĝiaj parametroj, se ĝi havas iujn. Rigardu ĉi tiun ekzemplon kun du subrutinoj:

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

La programo presas la signaturojn. Ĝi ne presas valorojn:

```console
sub f1()
sub f2($x)
```

Tio estas tre utila kun plur-funkcioj. Ili estas pluraj funkcioj kun la sama nomo. Ĉi tie, `dd` diras al vi, kiun varianton la programo vere vokas:

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

Ĉiufoje, la eligo nomas la varianton, kiu kongruas:

```console
sub g()
sub g($x)
```

{% include nav.html %}
