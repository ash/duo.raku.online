---
title: 'Solution: Matchen op type'
translations_gpt: true
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Hier is de waarde om mee te matchen een type. Dan kijkt de smart match of het topic *van dat type is*. `3.14` is geen `Int`, dus de eerste `when` wordt overgeslagen.

1. In Raku is een decimaal getal zoals `3.14` een `Rat`, een rationaal getal. Daarom matcht de tweede `when`, en het programma drukt `rational` af.

{% include nav.html %}
