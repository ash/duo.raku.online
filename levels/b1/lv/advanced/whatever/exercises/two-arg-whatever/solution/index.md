---
title: 'Risinājums: Divu argumentu Whatever'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Izteiksmē ir divas zvaigznītes, tāpēc Raku uzbūvē `WhateverCode`, kas ņem divus argumentus. Pirmā zvaigznīte ir pirmais arguments, un otrā zvaigznīte ir otrais.

1. Izsaukums `$join('a', 'b')` aizpilda zvaigznītes pēc kārtas. Tas dod `'a' ~ '-' ~ 'b'`, kas ir `a-b`.

{% include nav.html %}
