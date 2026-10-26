---
title: 'Solution: Tel de unieke'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Je kunt de broncode vinden in het bestand [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Uitvoer

```
7
```

## Opmerkingen

1. Geef de array aan `set`. Je krijgt een set van de waarden. Een set bewaart alleen unieke waarden. Dus wordt elk herhaald getal één waarde.

1. Dan geeft de methode `elems` het aantal unieke waarden terug. Dat is `7`.

{% include nav.html %}
