---
title: 'Solution: Een waarschuwing onderdrukken'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Je kunt de broncode vinden in het bestand [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Uitvoer

```
Hello, !
```

## Opmerkingen

1. Als je de ongedefinieerde `$name` in de string zet, geeft dat normaal een waarschuwing "use of uninitialized value". Met `quietly` rond de expressie blijft de waarschuwing verborgen, dus alleen de begroeting wordt afgedrukt.

1. Net als `do` geeft `quietly` de waarde van zijn blok terug. De complete string wordt dus opgeslagen in `$greeting`. De ontbrekende naam laat er een leeg gat in achter.

1. `quietly` verbergt alleen de waarschuwing, en de waarde is nog steeds ongedefinieerd. Als je in plaats daarvan de ontbrekende waarde wilt *afhandelen*, geef dan een standaardwaarde. Gebruik daarvoor de defined-or-operator `//`. `$name // 'friend'` geeft `'friend'` als `$name` ongedefinieerd is. Zo print `"Hello, " ~ ($name // 'friend') ~ "!"` de tekst `Hello, friend!` zonder enige waarschuwing.

{% include nav.html %}
