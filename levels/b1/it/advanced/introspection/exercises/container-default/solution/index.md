---
title: 'Solution: Il valore predefinito del contenitore'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il trait `is default(0)` dà al contenitore un valore predefinito. Non è stato ancora assegnato niente, quindi leggere `$count` restituisce questo valore predefinito. Per questo la prima riga stampa `0`.

1. `.VAR.default` chiede al contenitore stesso il valore predefinito che gli è stato dato, che anche qui è `0`. Senza il trait, il valore predefinito di un contenitore senza tipo sarebbe `(Any)`.

{% include nav.html %}
