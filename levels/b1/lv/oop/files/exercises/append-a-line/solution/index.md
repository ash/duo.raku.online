---
title: 'Risinājums: Izveidojiet žurnālu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Pirmais `spurt` izveido jaunu failu, kurā ir rinda `start`.

1. Katrs `spurt` cikla iekšienē izmanto `:append`. Tāpēc tas pievieno savu rindu aiz esošā satura un neaizstāj failu. Tieši tā aug žurnālfails. Katra cikla kārta pievieno beigās vēl vienu rindu. Tāpat dara arī katra programmas palaišana.

1. Bez `:append` katra kārta pārrakstītu failu. Paliktu tikai pēdējā rinda.

{% include nav.html %}
