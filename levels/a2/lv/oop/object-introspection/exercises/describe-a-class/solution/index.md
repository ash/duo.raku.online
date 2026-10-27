---
title: 'Risinājums: Aprakstiet klasi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Atrodiet programmu failā [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Izvade

```
Dog
4
False
```

## Komentāri

1. `.^name` atgriež klases nosaukumu, `Dog`.

1. `.^mro` atgriež mantošanas ķēdi. `.elems` saskaita tipus tajā. Ķēdē ir četri tipi. Tie ir `Dog`, tā vecākklase `Animal` un tad `Any` un `Mu`. Katrai klasei ķēdē ir `Any` un `Mu`. Tāpēc skaits ir `4`.

1. `.^mro.map(*.^name)` pārvērš ķēdi par tipu nosaukumu sarakstu: `(Dog Animal Any Mu)`. Operators `∈` pārbauda, vai elements ir kopā. Šeit tas pārbauda, vai `Cat` ir viens no šiem nosaukumiem. `Dog` nemanto ne no viena `Cat`. Tāpēc atbilde ir `False`.

{% include nav.html %}
