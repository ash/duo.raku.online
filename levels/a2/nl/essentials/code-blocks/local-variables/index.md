---
title: Lokale variabelen
---

{% include menu.html %}

Nu maak je een variabele in de globale scope. Je maakt hem ook lokaal, in het blok. Wat gebeurt er dan?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Nu zijn er twee variabelen in het programma. Ze hebben dezelfde naam. Maar het zijn verschillende variabelen. In de globale scope is elke `$x` de globale variabele. In het blok is `$x` een lokale variabele. Dat is niet de globale `$x`. Het programma print twee verschillende waarden:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
