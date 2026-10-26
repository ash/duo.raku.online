---
title: 'Risinājums: Izgūt tipizētu mainīgo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Mainīgajam ir deklarēts tips. Tāpēc `dd` izdrukā tipu pirms nosaukuma: `Int $n = 42`.

1. Mainīgajam bez tipa `dd` izdrukā tikai `$n = 42`. Priekšā nav tipa.

{% include nav.html %}
