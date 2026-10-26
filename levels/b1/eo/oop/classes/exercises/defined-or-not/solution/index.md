---
title: 'Solvo: Difinita aŭ ne'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Eligo

```
False
False
True
True
```

## Komentoj

1. La buklo iras tra miksaĵo de valoroj. Du estas tipobjektoj, `Cat` kaj `Dog`, kaj du estas ekzempleroj, `Cat.new` kaj `Dog.new`.

1. Ambaŭ tipobjektoj estas nedifinitaj, do `defined` redonas `False` por ili. Ambaŭ ekzempleroj estas difinitaj, do ĝi redonas `True`. Do gravas, ĉu valoro estas tipobjekto aŭ vera ekzemplero. La klaso de la valoro ne gravas.

{% include nav.html %}
