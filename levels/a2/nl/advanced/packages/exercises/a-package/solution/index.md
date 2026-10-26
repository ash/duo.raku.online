---
title: 'Solution: Een pakket'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De variabele en de subroutine hebben allebei `our`. Ze horen dus allebei bij de naamruimte `Temperature`. Code buiten het pakket kan erbij.

1. Je krijgt de variabele met `$Temperature::freezing`. Eerst komt de sigil, dan de pakketnaam, dan de naam van de variabele. Je roept de subroutine aan als `Temperature::fahrenheit(100)`. Voor `100` rekent hij `100 * 9/5 + 32` uit. Het resultaat is `212`.

1. Een gewoon `package` geeft alleen de naamruimte. Voor een bibliotheek zouden we in plaats daarvan `module` gebruiken. Een bibliotheek kun je steeds opnieuw gebruiken. Later, met objecten, zouden we een `class` gebruiken. Maar de naamruimte werkt in al deze gevallen op dezelfde manier.

{% include nav.html %}
