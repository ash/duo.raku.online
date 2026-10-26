---
title: 'Решение: Перевод температуры'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Celsius {
    has $.degrees;

    method to-fahrenheit {
        $.degrees * 9 / 5 + 32;
    }
}

say Celsius.new(degrees => 100).to-fahrenheit;
```

🦋 Исходный код можно найти в файле [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Вывод

```
212
```

## Комментарии

1. Метод использует атрибут `degrees` объекта. Поэтому формуле не нужен аргумент.

1. `100` градусов Цельсия — это `212` градусов Фаренгейта.

{% include nav.html %}
