---
title: 'Solution: Il valore predefinito del contenitore'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Puoi trovare il codice sorgente nel file [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Output

```
0
0
```

## Commenti

1. Il trait `is default(0)` dà al contenitore un valore predefinito. Il programma non assegna niente a `$count`. Quindi `$count` restituisce il valore predefinito. La prima riga stampa `0`.

1. `.VAR.default` chiede al contenitore il suo valore predefinito. Anche questo è `0`. Senza il trait, il valore predefinito è diverso. Un contenitore senza tipo ha allora il valore predefinito `(Any)`.

{% include nav.html %}
