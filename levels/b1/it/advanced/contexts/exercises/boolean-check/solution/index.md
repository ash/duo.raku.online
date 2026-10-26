---
title: 'Solution: Un controllo booleano'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my @empty;
say ?@empty;
```

🦋 Puoi trovare il codice sorgente nel file [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Output

```
False
```

## Commenti

1. Il prefisso `?` imposta il contesto Booleano.

1. Un array vuoto è falso, ed è proprio su questo che si basa `if @array`.

{% include nav.html %}
