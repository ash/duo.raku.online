---
title: 'Risinājums: Divnieka pakāpes'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Trīs vērtības sākumā ir `1, 2, 4`. Tās aug ar reizināšanu. Tāpēc `...` redz ģeometrisku virkni. Beigu punkts ir `Inf`. Tāpēc virkne pati nekad neapstājas.

1. `head(8)` paņem tikai pirmās astoņas vērtības. Virkne ir slinka. Tāpēc Raku nekad nerada pārējās vērtības. Tikai tāpēc jūs varat droši rakstīt bezgalīgu virkni.

{% include nav.html %}
