---
title: 'Risinājums: Divnieka pakāpes'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 Atrodiet programmu failā [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Izvade

```
(1 2 4 8 16 32 64 128)
```

## Komentāri

1. Trīs sākuma vērtības `1, 2, 4` aug ar reizināšanu. Tāpēc `...` redz, ka šī ir ģeometriska virkne. Tā kā beigu punkts ir `Inf`, tā pati nekad neapstājas.

1. `head(8)` paņem tikai pirmās astoņas vērtības. Tā kā virkne ir slinka, pārējās vērtības nekad netiek ģenerētas. Tas ir vienīgais iemesls, kāpēc bezgalīgu virkni ir droši rakstīt.

{% include nav.html %}
