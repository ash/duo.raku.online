---
title: 'Solvo: Figuro kaj kvadrato'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Shape {
    method name {
        'shape';
    }
    method describe {
        'I am a ' ~ self.name;
    }
}

class Square is Shape {
    method name {
        'square';
    }
}

say Square.new.describe;
```

🦋 Vi povas trovi la fontkodon en la dosiero [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Eligo

```
I am a square
```

## Komentoj

1. `Square` heredas `describe` el `Shape`, kaj ĝi superregas nur `name`.

1. `describe` vokas `self.name`, kaj tio prenas la superregantan `name` el `Square`. Do la priskribo diras `square` kaj ne `shape`.

{% include nav.html %}
