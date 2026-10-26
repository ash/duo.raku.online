---
title: 'Risinājums: Procentu operators'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Programmas pirmkodu var atrast failā [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Izvade

```
30
```

## Komentāri

1. Operators pieņem procentus `$p` kā kreiso operandu. Tā labais operands ir kopējā summa, `$whole`.

1. Reizinot `$whole` ar `$p` un dalot ar `100`, iegūst vajadzīgo daļu. Šeit `150 * 20 / 100` ir `30`.

{% include nav.html %}
