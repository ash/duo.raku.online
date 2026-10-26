---
title: 'Solution: Matchen op type'
translations_gpt: true
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Je kunt de broncode vinden in het bestand [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Uitvoer

```
rational
```

## Opmerkingen

1. Soms heeft `when` een type. Dan kijkt de smart match of het topic *dit type heeft*. `3.14` is geen `Int`. Daarom slaat Raku de eerste `when` over.

1. In Raku is een getal met een decimale punt, zoals `3.14`, een `Rat`. Een `Rat` is een rationaal getal, of een breuk. Daarom matcht de tweede `when`. Het programma drukt `rational` af.

{% include nav.html %}
