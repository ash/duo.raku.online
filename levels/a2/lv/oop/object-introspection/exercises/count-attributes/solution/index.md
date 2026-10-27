---
title: 'Risinājums: Saskaitiet atribūtus'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 Atrodiet programmu failā [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Izvade

```
2
```

## Komentāri

1. `.^attributes` atgriež sarakstu. Tajā ir klases atribūti.

1. `.elems` tos saskaita. Klasei `Point` ir divi atribūti. Tāpēc atbilde ir `2`.

{% include nav.html %}
