---
title: 'Solution: Een optionele exponent'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Het `?` achter `$exp` maakt de parameter optioneel. Zo kun je `power` aanroepen met alleen het grondtal.

1. Als je `$exp` weglaat, is hij ongedefinieerd. Dan geeft `//` de waarde `2`. Zo kwadrateert `power(5)` het grondtal en krijgt `25`. Kijk nu naar `power(5, 3)`. Hier is de exponent er wel. De code gebruikt hem dus en krijgt `125`.

{% include nav.html %}
