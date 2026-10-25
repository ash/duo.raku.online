---
title: Lokale Variablen
---

{% include menu.html %}

Deklarieren wir eine Variable im globalen Geltungsbereich. Was passiert, wenn wir sie auch lokal im Block deklarieren?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Jetzt gibt es zwei getrennte Variablen im Programm. Beide heißen `$x`. Im globalen Geltungsbereich meint `$x` immer die globale Variable. Aber im Block ist `$x` eine andere, lokale Variable. Das Programm gibt zwei verschiedene Werte aus:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
