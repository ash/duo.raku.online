---
title: 'Risinājums: Figūra un kvadrāts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

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

🦋 Atrodiet programmu failā [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Izvade

```
I am a square
```

## Komentāri

1. `Square` manto `describe` no `Shape`. Tā pārraksta tikai `name`.

1. `describe` izsauc `self.name`. Šis izsaukums atrod jauno `name` no `Square`. Tāpēc apraksts saka `square`, nevis `shape`.

{% include nav.html %}
