---
title: 'Solution: Wat is het'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Je kunt de broncode vinden in het bestand [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Uitvoer

```
True
False
```

## Opmerkingen

1. `$a.WHAT` is niet de string `Int`. Het is het echte `Int` type object. Dus vergelijkt `=== Int` het met het type zelf. Het resultaat is `True`.

1. `$b` bewaart een string. Dus is zijn `WHAT` gelijk aan `Str`. De vergelijking met `Int` geeft `False`. Dus is `WHAT` nuttig in voorwaarden. Het is niet alleen voor afdrukken.

{% include nav.html %}
