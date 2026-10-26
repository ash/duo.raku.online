---
title: 'Solution: Absolute waarde'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Je kunt de broncode vinden in het bestand [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Uitvoer

```
7
4
```

## Opmerkingen

1. De eerste kandidaat werkt alleen voor negatieve getallen. Hij geeft het getal met het andere teken terug. Deze waarde is positief.

1. Alle andere getallen gaan naar de tweede kandidaat. Dat zijn nul en de positieve getallen. De tweede kandidaat geeft de waarde terug zoals hij is.

{% include nav.html %}
