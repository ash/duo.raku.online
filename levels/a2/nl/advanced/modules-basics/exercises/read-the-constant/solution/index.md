---
title: 'Solution: De constante lezen'
translations_gpt: De oplossing van 'Lees de constante'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. `need Circle` laadt de module. Maar het importeert geen namen. Raku kent `$pi` dus niet los, zonder de naam van de module.

1. Je komt bij de `our`-variabele via de naam van de module. Je schrijft hem als `$Circle::pi`.

{% include nav.html %}
