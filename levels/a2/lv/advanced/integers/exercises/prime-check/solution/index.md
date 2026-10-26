---
title: 'Risinājums: Pirmskaitlis vai nē'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Programmas pirmkodu var atrast failā [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Izvade

```
True
False
```

## Komentāri

1. `97` var dalīt tikai ar `1` un ar sevi pašu. Tāpēc `is-prime` atgriež `True`.

1. `91` izskatās kā pirmskaitlis, bet tas ir `7 × 13`. Tāpēc `is-prime` atgriež `False`. Metode atrod reizinātājus jūsu vietā. Tāpēc mums ir šī metode.

{% include nav.html %}
