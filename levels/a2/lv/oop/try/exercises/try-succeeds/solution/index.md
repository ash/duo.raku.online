---
title: 'Risinājums: Kad nekas nenoiet greizi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 Atrodiet programmu failā [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Izvade

```
True
42
```

## Komentāri

1. Šeit `try` bloks izpildās bez izņēmuma. Tāpēc tas vienkārši dod bloka vērtību.

1. Tātad `$r` satur `42`, un `$r.defined` ir `True`.

{% include nav.html %}
