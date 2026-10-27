---
title: 'Oplossing: Een vorm en een vierkant'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `Square` erft `describe` van `Shape`, en ze overschrijft alleen `name`.

1. `describe` roept `self.name` aan, en die aanroep krijgt de overschrijvende `name` uit `Square`. Dus zegt de beschrijving `square` en niet `shape`.

{% include nav.html %}
