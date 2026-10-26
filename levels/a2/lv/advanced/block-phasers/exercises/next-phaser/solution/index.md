---
title: 'Risinājums: Pēc katra soļa'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Atrodiet programmu failā [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Izvade

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Komentāri

1. Fāzeris `NEXT` kodā ir pirmais. Bet tas izpildās katras kārtas *beigās*. Tajā brīdī ķermenis jau ir pieskaitījis pašreizējo skaitli mainīgajam `$sum`.

1. Tātad pēc pirmās kārtas `$sum` ir `1`. Pēc otrās kārtas tas ir `3`. Pēc trešās kārtas tas ir `6`. Ar `NEXT` cikls var izpildīt kodu starp savām kārtām. `FIRST` ir citāds: tas izpildās vienreiz sākumā. Arī `LAST` ir citāds: tas izpildās vienreiz beigās.

{% include nav.html %}
