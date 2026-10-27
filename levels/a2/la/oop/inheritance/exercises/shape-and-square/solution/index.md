---
title: 'Solutio: Figura et quadratum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `Square` methodum `describe` ex `Shape` heredat. Solum `name` superscribit.

1. `describe` vocat `self.name`. Haec vocatio novam `name` ex `Square` invenit. Itaque descriptio `square` dicit, non `shape`.

{% include nav.html %}
