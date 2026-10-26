---
title: 'Risinājums: Pēc katra soļa'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Fāzeris `NEXT` ir uzrakstīts pirmais, bet tas izpildās katra piegājiena *beigās*. Līdz tam ķermenis jau ir pieskaitījis pašreizējo skaitli mainīgajam `$sum`.

1. Tātad pēc pirmā piegājiena `$sum` ir `1`. Pēc otrā tas ir `3`, un pēc trešā tas ir `6`. Ciklā `NEXT` ir veids, kā izpildīt kaut ko starp piegājieniem. Tas atšķiras no `FIRST`, kas izpildās vienreiz sākumā. Tas atšķiras arī no `LAST`, kas izpildās vienreiz beigās.

{% include nav.html %}
