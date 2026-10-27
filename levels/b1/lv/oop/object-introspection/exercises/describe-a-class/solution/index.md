---
title: 'Risinājums: Aprakstiet klasi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `.^name` atgriež pašas klases nosaukumu, `Dog`.

1. `.^mro` atgriež mantošanas ķēdi, un `.elems` to saskaita. Ķēdē ir četri tipi: `Dog`, tā vecākklase `Animal`, kā arī `Any` un `Mu`, kas ir katrai klasei. Tāpēc skaits ir `4`.

1. `.^mro.map(*.^name)` pārvērš šo ķēdi par tipu nosaukumu sarakstu, `(Dog Animal Any Mu)`. Operators `∈` pārbauda piederību kopai. Šeit tas pārbauda, vai `Cat` ir viens no tiem. `Dog` nemanto ne no viena `Cat`, tāpēc atbilde ir `False`.

{% include nav.html %}
