---
title: 'Risinājums: Pārtveriet kļūdu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Kad bloks izpildās bez kļūdas, `try` vienkārši dod bloka vērtību. Tāpēc `$ok` satur `42`.

1. `die` otrajā blokā izmet izņēmumu. Tāpēc šis bloks dod nedefinētu vērtību, un `$bad.defined` ir `False`.

1. Noķertais izņēmums glabājas speciālajā mainīgajā `$!`. `$!.message` atgriež tekstu, ko tam iedeva: `broken`.

{% include nav.html %}
