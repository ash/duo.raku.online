---
title: 'Solution: Een waarschuwing onderdrukken'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Hier gaat de ongedefinieerde `$name` in de string. Meestal geeft dat een waarschuwing: "use of uninitialized value". Maar de expressie staat in `quietly`. Daarom blijft de waarschuwing verborgen. Het programma drukt alleen de begroeting af.

1. Net als `do` geeft `quietly` de waarde van zijn blok terug. Het programma bewaart de nieuwe string dus in `$greeting`. De naam ontbreekt, dus er zit een leeg gat in de string.

1. `quietly` verbergt alleen de waarschuwing. De waarde is nog steeds ongedefinieerd. Misschien wil je iets *doen* met de ontbrekende waarde. Geef dan een standaardwaarde met de defined-or-operator `//`. `$name // 'friend'` geeft `'friend'` als `$name` ongedefinieerd is. Zo print `"Hello, " ~ ($name // 'friend') ~ "!"` de tekst `Hello, friend!`. Er is helemaal geen waarschuwing.

{% include nav.html %}
