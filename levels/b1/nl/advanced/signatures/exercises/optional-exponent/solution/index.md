---
title: 'Solution: Een optionele exponent'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 De broncode is te vinden in het bestand [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Uitvoer

```
25
125
```

## Opmerkingen

1. Het `?` achter `$exp` maakt de parameter optioneel. Daardoor kun je `power` aanroepen met alleen het grondtal.

1. Als `$exp` wordt weggelaten, is hij ongedefinieerd, en `//` geeft de terugvalwaarde `2`. Zo kwadrateert `power(5)` het grondtal en krijgt `25`. Met een exponent, zoals in `power(5, 3)`, wordt die waarde gebruikt. Het resultaat is `125`.

{% include nav.html %}
