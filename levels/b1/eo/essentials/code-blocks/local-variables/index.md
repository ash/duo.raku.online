---
title: Lokaj variabloj
---

{% include menu.html %}

Ni deklaru variablon en la tutmonda amplekso. Kio okazas, se ni ankaŭ deklaras ĝin loke en la bloko?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Nun estas du apartaj variabloj en la programo. Ambaŭ nomiĝas `$x`. En la tutmonda amplekso, `$x` ĉiam signifas la tutmondan variablon. Sed ene de la bloko, `$x` estas alia, loka variablo. La programo presas du malsamajn valorojn:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
