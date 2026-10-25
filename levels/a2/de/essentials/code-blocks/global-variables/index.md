---
title: Globale Variablen
---

{% include menu.html %}

Jetzt erstellen wir eine Variable vor dem Codeblock:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Hier ist `$x` eine globale Variable. Sie ist im globalen Geltungsbereich. Das ganze Programm kann sie benutzen. Das Programm gibt zweimal `42` aus.

{% include nav.html %}
