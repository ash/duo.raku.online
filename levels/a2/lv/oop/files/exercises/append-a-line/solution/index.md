---
title: 'Risinājums: Izveidojiet žurnālu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Atrodiet programmu failā [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Izvade

```
start
entry 1
entry 2
entry 3
```

## Komentāri

1. Pirmais `spurt` izveido jaunu failu ar rindu `start`.

1. Katram `spurt` ciklā ir `:append`. Tāpēc tas pievieno savu rindu aiz vecā satura. Tas neaizstāj failu. Tieši tā aug žurnālfails. Katra cikla kārta pievieno beigās vēl vienu rindu. Katra programmas palaišana var tādā pašā veidā pievienot rindu.

1. Bez `:append` katra kārta pārraksta failu. Tad paliek tikai pēdējā rinda.

{% include nav.html %}
