---
title: 'Risinājums: Masīva vidējais'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Programmas pirmkodu var atrast failā [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Izvade

```
25
```

## Komentāri

1. Redukcijas metaoperators `[+]` ievieto operatoru `+` starp visiem `@data` elementiem. Tāpēc `[+] @data` ir tas pats, kas `10 + 20 + 30 + 40`, tas ir, `100`. Iekavas nodrošina, ka redukcija notiek pirms dalīšanas.

1. `@data.elems` dod elementu skaitu. Dalot summu ar to, iegūst vidējo vērtību `25`. Ja dalījums nebūtu precīzs, Raku rezultātu nenoapaļotu. Tā vietā tas dotu precīzu `Rat` vērtību.

{% include nav.html %}
