---
title: 'Solution: Cos''è?'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `$a.WHAT` non è la stringa `Int`, ma il vero oggetto tipo `Int`. Quindi `=== Int` lo confronta con il tipo stesso e restituisce `True`.

1. `$b` contiene una stringa, quindi il suo `WHAT` è `Str`. Quando lo confronti con `Int`, ottieni `False`. Per questo `WHAT` è utile nelle condizioni, e non solo quando stampi qualcosa.

{% include nav.html %}
