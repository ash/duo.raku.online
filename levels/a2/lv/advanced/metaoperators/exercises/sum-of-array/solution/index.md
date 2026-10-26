---
title: 'Risinājums: Masīva vidējais'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Redukcijas metaoperators `[+]` ieliek `+` starp visiem `@data` elementiem. Tāpēc `[+] @data` ir tas pats, kas `10 + 20 + 30 + 40`. Tas ir `100`. Kodam ir vajadzīgas iekavas. Ar tām redukcija notiek pirms dalīšanas.

1. `@data.elems` ir elementu skaits. Summa, dalīta ar to, dod vidējo vērtību, `25`. Dažreiz skaitļi nedalās bez atlikuma. Tad Raku nenoapaļo rezultātu. Raku dod precīzu daļskaitli, `Rat`.

{% include nav.html %}
