---
title: 'Risinājums: Pakāpju tornis'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say 2 ** 2 ** 3;
```

🦋 Programmas pirmkodu var atrast failā [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Izvade

```
256
```

## Komentāri

1. Operators `**` ir labēji asociatīvs, tāpēc izteiksme grupējas kā `2 ** (2 ** 3)`.

1. Tas ir `2 ** 8`, kas ir `256`. Tas nav `(2 ** 2) ** 3`, kas dotu `64`.

{% include nav.html %}
