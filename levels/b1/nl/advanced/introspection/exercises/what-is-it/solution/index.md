---
title: 'Solution: Wat is het'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `$a.WHAT` is niet de string `Int`, maar het echte `Int` type object. Dus vergelijkt `=== Int` het met het type zelf en geeft `True` terug.

1. `$b` bevat een string, dus is zijn `WHAT` gelijk aan `Str`. Als je die vergelijkt met `Int`, krijg je `False`. Daarom is `WHAT` nuttig in voorwaarden, en niet alleen als je iets afdrukt.

{% include nav.html %}
