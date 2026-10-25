---
title: Lokale Variablen
---

{% include menu.html %}

Jetzt erstellen Sie eine Variable im globalen Geltungsbereich. Sie erstellen sie auch lokal, im Block. Was passiert dann?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Jetzt gibt es zwei Variablen im Programm. Sie haben denselben Namen. Aber es sind verschiedene Variablen. Im globalen Geltungsbereich ist jedes `$x` die globale Variable. Im Block ist `$x` eine lokale Variable. Das ist nicht das globale `$x`. Das Programm gibt zwei verschiedene Werte aus:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
