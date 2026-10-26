---
title: 'Solution: Een pakket'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Je kunt de broncode vinden in het bestand [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Uitvoer

```
0
212
```

## Opmerkingen

1. Zowel de variabele als de subroutine zijn gedeclareerd met `our`. Daardoor worden ze allebei deel van de `Temperature`-naamruimte, en kun je ze van buitenaf bereiken.

1. Je bereikt de variabele als `$Temperature::freezing`: de sigil, de pakketnaam en dan de naam van de variabele. De subroutine roep je aan als `Temperature::fahrenheit(100)`. Het omrekenen van `100` geeft `100 * 9/5 + 32`, en dat is `212`.

1. Een gewoon `package` geeft je alleen de naamruimte. Voor een herbruikbare bibliotheek zouden we in plaats daarvan `module` gebruiken. Als we met objecten werken, zouden we een `class` gebruiken. Maar de naamruimte werkt in alle gevallen op dezelfde manier.

{% include nav.html %}
