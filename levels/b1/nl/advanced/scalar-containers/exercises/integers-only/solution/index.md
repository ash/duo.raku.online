---
title: 'Solution: Alleen gehele getallen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

## Code

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Uitvoer

```
250
(Int)
```

## Opmerkingen

1. Door de `Int`-typebeperking in `my Int $cars` weigert de container alle niet-gehele waarden. Een directe toewijzing van `250.7`, een `Rat`, zou een compile-time fout geven.

1. De aanroep `.Int` zet de rationele waarde `250.7` om naar het gehele getal `250`. De methode laat gewoon het decimale deel weg. De nieuwe waarde past in de container. Verwar dit niet met afronden.

1. De `.WHAT`-pseudomethode laat zien dat de waarde in de container het type `Int` heeft.

{% include nav.html %}
