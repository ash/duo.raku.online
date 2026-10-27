---
title: 'Oplossing: Een vorm en een vierkant'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

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

🦋 Je kunt de broncode vinden in het bestand [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Uitvoer

```
I am a square
```

## Opmerkingen

1. `Square` erft `describe` van `Shape`. Ze overschrijft alleen `name`.

1. `describe` roept `self.name` aan. Deze aanroep vindt de nieuwe `name` uit `Square`. Dus zegt de beschrijving `square`, niet `shape`.

{% include nav.html %}
