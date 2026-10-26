---
title: 'Risinājums: Izgūt tipizētu mainīgo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my Int $n = 42;
dd $n;
```

🦋 Atrodiet programmu failā [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Izvade

```
Int $n = 42
```

## Komentāri

1. Mainīgajam ir deklarēts tips, tāpēc `dd` to izdrukā pirms nosaukuma: `Int $n = 42`.

1. Mainīgajam bez tipa `dd` izdrukātu tikai `$n = 42`, bez tipa priekšā.

{% include nav.html %}
