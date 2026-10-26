---
title: 'Risinājums: Ejošs robots'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Atrodiet programmu failā [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Izvade

```
8
```

## Komentāri

1. Atribūtam `position` ir `is rw`. Tāpēc metode var to mainīt. Tā noklusētā vērtība ir `0`, tāpēc jauns robots sāk koordinātu sākumpunktā.

1. Metode `move` dod savam parametram noklusēto vērtību: `$steps = 1`. Tāpēc `$r.move` bez argumenta pārvieto robotu par vienu soli. `$r.move(5)` un `$r.move(2)` pārvieto to par doto skaitu. Trīs izsaukumi saskaita `5 + 1 + 2`. Tāpēc pēdējā pozīcija ir `8`.

{% include nav.html %}
