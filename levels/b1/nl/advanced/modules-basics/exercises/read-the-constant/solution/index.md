---
title: 'Solution: De constante lezen'
translations_gpt: De oplossing van 'Lees de constante'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

Het programma, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Uitvoer

```console
$ raku -I. read-pi.raku
3.14
```

## Opmerkingen

1. `need Circle` laadt de module, maar het importeert geen namen. Raku zou een losse `$pi` dus niet herkennen.

1. Het programma bereikt de `our`-variabele via de naam van de module, als `$Circle::pi`.

{% include nav.html %}
