---
title: 'Soluzione: Una figura e un quadrato'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

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

🦋 Trova il programma nel file [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Output

```
I am a square
```

## Commenti

1. `Square` eredita `describe` da `Shape` e sovrascrive solo `name`.

1. `describe` chiama `self.name`, e questa chiamata prende la nuova versione di `name` in `Square`. Così la descrizione dice `square` e non `shape`.

{% include nav.html %}
