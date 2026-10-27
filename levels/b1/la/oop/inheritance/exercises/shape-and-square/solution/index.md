---
title: 'Solutio: Figura et quadratum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

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

🦋 Inveni codicem fontem in archivo [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Exitus

```
I am a square
```

## Commentarii

1. `Square` methodum `describe` ex `Shape` heredat, et solum `name` superscribit.

1. `describe` vocat `self.name`, et haec vocatio novam `name` ex `Square` accipit. Itaque descriptio `square` dicit, non `shape`.

{% include nav.html %}
