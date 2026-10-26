---
title: 'Solution: Cos''è?'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Puoi trovare il codice sorgente nel file [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Output

```
True
False
```

## Commenti

1. `$a.WHAT` non è la stringa `Int`. È il vero oggetto tipo `Int`. Quindi `=== Int` lo confronta con il tipo stesso. Il risultato è `True`.

1. `$b` contiene una stringa. Quindi il suo `WHAT` è `Str`. Il confronto con `Int` dà `False`. Così `WHAT` è utile nelle condizioni. Non serve solo per stampare.

{% include nav.html %}
