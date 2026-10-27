---
title: 'Risinājums: Pārtveriet kļūdu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Atrodiet programmu failā [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Izvade

```
42
False
broken
```

## Komentāri

1. Šeit bloks izpildās bez kļūdas. Tad `try` vienkārši dod bloka vērtību. Tāpēc `$ok` satur `42`.

1. `die` otrajā blokā izmet izņēmumu. Tāpēc šis bloks dod nedefinētu vērtību. `$bad.defined` ir `False`.

1. Raku glabā noķerto izņēmumu speciālajā mainīgajā `$!`. `$!.message` atgriež izņēmuma tekstu, `broken`.

{% include nav.html %}
