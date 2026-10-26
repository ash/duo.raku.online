---
title: 'Solvo: Difinita aŭ ne'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La buklo iras tra du tipobjektoj, `Cat` kaj `Dog`. Ĝi ankaŭ iras tra du ekzempleroj, `Cat.new` kaj `Dog.new`.

1. La du tipobjektoj estas nedifinitaj. Do `defined` redonas `False` por ili. La du ekzempleroj estas difinitaj. Do `defined` redonas `True` por ili. Nur unu afero gravas ĉi tie. Ĉu la valoro estas tipobjekto aŭ vera ekzemplero? La klaso de la valoro ne gravas.

{% include nav.html %}
