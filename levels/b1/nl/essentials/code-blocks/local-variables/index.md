---
title: Lokale variabelen
---

{% include menu.html %}

Laten we een variabele in de globale scope declareren. Wat gebeurt er als we hem ook lokaal in het blok declareren?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Nu zijn er twee aparte variabelen in het programma. Ze heten allebei `$x`. In de globale scope betekent `$x` altijd de globale variabele. Maar binnen het blok is `$x` een andere, lokale variabele. Het programma print twee verschillende waarden:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
