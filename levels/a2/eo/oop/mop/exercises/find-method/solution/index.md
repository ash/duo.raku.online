---
title: 'Solvo: Trovu metodon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Vi povas trovi la fontkodon en la dosiero [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Eligo

```
True
```

## Komentoj

1. `.^find_method` redonas la metodon, se ĝi estas tie. Se ne, ĝi redonas nedifinitan valoron. `so` faras el tio simplan Boolean valoron, `True` aŭ `False`.

1. `Dog` ne havas proprajn metodojn. Sed la rezulto estas `True`. `find_method` serĉas tra la tuta hereda ĉeno. Ĝi trovas `speak` pli supre, en `Animal`. Vera metodvoko sur `Dog` funkcias same. Ĝi ankaŭ trovas la hereditan metodon tiel.

{% include nav.html %}
