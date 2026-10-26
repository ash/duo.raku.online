---
title: 'Solvo: Nedeviga eksponento'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Vi povas trovi la fontkodon en la dosiero [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Eligo

```
25
125
```

## Komentoj

1. La `?` post `$exp` faras la parametron nedeviga. Do vi povas voki `power` kun nur la bazo.

1. Kiam `$exp` estas ellasita, ĝi estas nedifinita, kaj `//` donas la rezervan valoron `2`. Do `power(5)` kvadratigas la bazon kaj ricevas `25`. Kun eksponento, kiel en `power(5, 3)`, tiu valoro estas uzata anstataŭe. La rezulto estas `125`.

{% include nav.html %}
