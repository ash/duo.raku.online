---
title: 'Risinājums: Pakāpju tornis'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `**` ir labēji asociatīvs. Tāpēc izteiksme grupējas kā `2 ** (2 ** 3)`.

1. Tas ir `2 ** 8`, un rezultāts ir `256`. Tas nav `(2 ** 2) ** 3`. Tas būtu `64`.

{% include nav.html %}
