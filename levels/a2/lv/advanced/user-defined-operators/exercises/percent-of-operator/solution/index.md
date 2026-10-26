---
title: 'Risinājums: Procentu operators'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Operatora kreisais operands ir procenti, `$p`. Labais operands ir visa summa, `$whole`.

1. Sareiziniet `$whole` ar `$p` un daliet ar `100`. Tas dod daļu, kas mums vajadzīga: `150 * 20 / 100` ir `30`.

{% include nav.html %}
