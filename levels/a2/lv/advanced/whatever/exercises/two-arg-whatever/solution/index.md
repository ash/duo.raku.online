---
title: 'Risinājums: Divu argumentu Whatever'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Atrodiet programmu failā [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Izvade

```
a-b
```

## Komentāri

1. Izteiksmē ir divas zvaigznītes. Tāpēc Raku izveido `WhateverCode` ar diviem argumentiem. Pirmā zvaigznīte ir pirmais arguments. Otrā zvaigznīte ir otrais arguments.

1. Izsaukums `$join('a', 'b')` ieliek vērtības zvaigznīšu vietā pēc kārtas. Tas dod `'a' ~ '-' ~ 'b'`. Rezultāts ir `a-b`.

{% include nav.html %}
