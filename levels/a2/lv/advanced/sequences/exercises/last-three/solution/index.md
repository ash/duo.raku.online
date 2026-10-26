---
title: 'Risinājums: Pēdējie trīs'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say (5, 10 ... 50).tail(3);
```

🦋 Atrodiet programmu failā [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Izvade

```
(40 45 50)
```

## Komentāri

1. Sākuma vērtības ir pašas pirmās vērtības: `5, 10`. Tās dod soli pieci. Virkne iet līdz savam beigu punktam, `50`.

1. `tail(3)` atgriež virknes pēdējās trīs vērtības: `40, 45, 50`. Virkne ir galīga, tāpēc tai ir beigas. `head` darbojas tāpat. Tā atgriež pirmās dažas vērtības.

{% include nav.html %}
