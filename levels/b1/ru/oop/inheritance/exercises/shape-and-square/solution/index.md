---
title: 'Решение: Фигура и квадрат'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

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

🦋 Исходный код можно найти в файле [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Вывод

```
I am a square
```

## Комментарии

1. `Square` наследует `describe` от `Shape` и переопределяет только `name`.

1. `describe` вызывает `self.name`, и так он получает переопределённый `name` из `Square`. Поэтому в описании сказано `square`, а не `shape`.

{% include nav.html %}
