---
title: 'Risinājums: Statistikas modulis'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Viens `use Stats` ienes *abas* eksportētās apakšprogrammas uzreiz. `use` importē visu, kam modulī ir `is export`. Tas neimportē tikai vienu nosaukumu.

1. `mean` izsauc `total` moduļa iekšienē. Lai iegūtu vidējo vērtību, programma pati neizsauc `total`. Bet tas tomēr darbojas. Moduļa apakšprogrammas var izmantot viena otru. Izsaucējs redz tikai eksportētos nosaukumus.

1. Četri skaitļi kopā dod `100`. Tāpēc vidējā vērtība ir `100 / 4`. Tas ir `25`.

{% include nav.html %}
