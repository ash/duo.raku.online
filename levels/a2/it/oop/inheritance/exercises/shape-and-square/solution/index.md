---
title: 'Soluzione: Una figura e un quadrato'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `Square` eredita `describe` da `Shape`. Sovrascrive solo `name`.

1. `describe` chiama `self.name`. Questa chiamata trova il nuovo `name` di `Square`. Quindi la descrizione dice `square`, non `shape`.

{% include nav.html %}
