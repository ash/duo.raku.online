---
title: 'Risinājums: Rakstāms parametrs'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Programmas pirmkodu var atrast failā [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Izvade

```
42
```

## Komentāri

1. `is rw` sasaista parametru `$n` ar izsaucēja mainīgo `$score`. Tāpēc `$n *= 2` apakšprogrammā `double` maina pašu `$score`, un tādēļ programma izdrukā `42`.

1. Bez `is rw` parametrs būtu tikai lasāms, un `$n *= 2` izraisītu kļūdu. Ja tā vietā būtu `is copy`, `double` saņemtu privātu kopiju, ko mainīt. Tad `$score` paliktu neskarts ar vērtību `21`.

{% include nav.html %}
