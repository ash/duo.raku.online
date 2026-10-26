---
title: 'Risinājums: Rakstāms parametrs'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `is rw` savieno parametru `$n` ar izsaucēja mainīgo `$score`. Tāpēc `$n *= 2` apakšprogrammā `double` maina pašu `$score`. Tādēļ programma izdrukā `42`.

1. Bez `is rw` parametrs ir tikai lasāms. Tad `$n *= 2` dod kļūdu. Ar `is copy` apakšprogramma `double` saņem savu vērtības kopiju. Tā var mainīt šo kopiju. Bet `$score` paliek `21`.

{% include nav.html %}
