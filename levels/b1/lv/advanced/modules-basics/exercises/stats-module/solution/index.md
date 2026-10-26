---
title: 'Risinājums: Statistikas modulis'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

Programma `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Abus pirmkoda failus atrodiet direktorijā [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Izvade

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Komentāri

1. Viens pats `use Stats` ienes *abas* eksportētās apakšprogrammas uzreiz. `use` importē visu, ko modulis atzīmē ar `is export`, nevis tikai vienu nosaukumu.

1. `mean` izsauc `total` moduļa iekšienē. Lai iegūtu vidējo vērtību, programma pati neizsauc `total`, bet tas tomēr darbojas. Moduļa apakšprogrammas var paļauties viena uz otru. Izsaucējs redz tikai eksportētos nosaukumus.

1. Četru skaitļu summa ir `100`, tāpēc vidējā vērtība ir `100 / 4`, kas ir `25`.

{% include nav.html %}
