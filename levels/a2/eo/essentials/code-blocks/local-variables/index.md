---
title: Lokaj variabloj
---

{% include menu.html %}

Nun vi kreas variablon en la tutmonda amplekso. Vi ankaŭ kreas ĝin loke, ene de la bloko. Kio okazas tiam?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Nun estas du variabloj en la programo. Ili havas la saman nomon. Sed ili estas malsamaj variabloj. En la tutmonda amplekso, ĉiu `$x` estas la tutmonda variablo. Ene de la bloko, `$x` estas loka variablo. Ĝi ne estas la tutmonda `$x`. La programo presas du malsamajn valorojn:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
