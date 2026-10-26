---
title: 'Risinājums: Neobligāta pakāpe'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Pirmkodu var atrast faila [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Izvade

```
25
125
```

## Komentari

1. `?` aiz `$exp` padara to neobligātu. Tāpēc `power` var izsaukt tikai ar bāzi.

1. Ja jūs izlaižat `$exp`, tas ir nedefinēts. Tad `//` dod vērtību `2`. Tāpēc `power(5)` kāpina bāzi kvadrātā un iegūst `25`. Tagad paskatieties uz `power(5, 3)`. Šeit eksponents ir dots. Tāpēc kods to izmanto un iegūst `125`.

{% include nav.html %}
