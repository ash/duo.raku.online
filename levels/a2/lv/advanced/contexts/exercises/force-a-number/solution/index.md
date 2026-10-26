---
title: 'Risinājums: Piespiest skaitli'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Atrodiet programmu failā [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Izvade

```
3
```

## Komentāri

1. Prefikss `+` uzliek skaitlisko kontekstu.

1. Skaitliskajā kontekstā masīvs kļūst par savu elementu skaitu. Tāpēc rezultāts ir `3`.

{% include nav.html %}
