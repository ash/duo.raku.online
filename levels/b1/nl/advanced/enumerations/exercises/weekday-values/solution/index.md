---
title: 'Solution: Weekdagnummers'
translations_gpt: Dutch
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Als je de constanten als paren schrijft, kun je de getallen kiezen. Hier beginnen ze bij `1`.

1. Als je het enum-type aanroept als `Day(5)`, zoekt het andersom. Het vindt de constante met de waarde `5`, en dat is `Fri`. Op dezelfde manier geeft `Day(1)` de constante `Mon`. Dit is het omgekeerde van `Fri.value`, dat van de naam naar het getal gaat.

{% include nav.html %}
