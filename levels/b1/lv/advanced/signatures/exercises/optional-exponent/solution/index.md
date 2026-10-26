---
title: 'Risinājums: Neobligāta pakāpe'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `?` aiz `$exp` padara parametru neobligātu. Tāpēc jūs varat izsaukt `power` tikai ar bāzi.

1. Kad `$exp` ir izlaists, tas ir nedefinēts, un `//` dod rezerves vērtību `2`. Tāpēc `power(5)` kāpina bāzi kvadrātā un iegūst `25`. Ar eksponentu, kā `power(5, 3)`, tā vietā tiek izmantota šī vērtība. Rezultāts ir `125`.

{% include nav.html %}
