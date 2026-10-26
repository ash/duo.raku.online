---
title: 'Risinājums: Piespiest secību'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say 2 ** (3 + 1);
```

🦋 Programmas pirmkodu var atrast failā [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Izvade

```
16
```

## Komentāri

1. Bez iekavām `**` ir stiprāks nekā `+`. Tad jūs iegūstat `(2 ** 3) + 1 = 9`.

1. Iekavas dod saskaitīšanai augstāku prioritāti. Tāpēc Raku vispirms aprēķina `3 + 1`. Izteiksme kļūst par `2 ** 4`, un tas ir `16`. Ar iekavām jūs vienmēr varat mainīt parasto prioritāti.

{% include nav.html %}
