---
title: Globale Variablen
---

{% include menu.html %}

Lassen Sie uns eine Variable vor dem Codeblock erstellen:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Hier ist `$x` eine globale Variable. Sie liegt im globalen Geltungsbereich, und das Programm gibt zweimal `42` aus.

{% include nav.html %}
