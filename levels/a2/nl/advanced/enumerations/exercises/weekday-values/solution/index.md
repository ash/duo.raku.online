---
title: 'Solution: Weekdagnummers'
translations_gpt: Dutch
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Je kunt de broncode vinden in het bestand [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Uitvoer

```
Fri
Mon
```

## Opmerkingen

1. We schrijven de constanten als paren. Zo kunnen we de getallen kiezen. Hier beginnen ze bij `1`.

1. `Day(5)` roept het enum-type aan. Het zoekt de andere kant op, van het getal naar de constante. Het vindt de constante met de waarde `5`. Deze constante is `Fri`. Op dezelfde manier geeft `Day(1)` de constante `Mon`. `Fri.value` doet het omgekeerde. Dat gaat van de naam naar het getal.

{% include nav.html %}
