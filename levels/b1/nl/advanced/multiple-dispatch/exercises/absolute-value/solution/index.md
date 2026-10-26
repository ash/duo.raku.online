---
title: 'Solution: Absolute waarde'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De eerste kandidaat past alleen bij negatieve getallen. Hij geeft de waarde met het tegengestelde teken terug, en die is positief.

1. Alle andere getallen, dus nul en de positieve getallen, gaan naar de tweede kandidaat. Die geeft de waarde onveranderd terug.

{% include nav.html %}
