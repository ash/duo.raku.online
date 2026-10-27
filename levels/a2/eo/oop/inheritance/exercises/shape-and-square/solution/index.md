---
title: 'Solvo: Figuro kaj kvadrato'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `Square` heredas `describe` el `Shape`. Ĝi superregas nur `name`.

1. `describe` vokas `self.name`. Ĉi tiu voko trovas la novan `name` el `Square`. Do la priskribo diras `square`, ne `shape`.

{% include nav.html %}
