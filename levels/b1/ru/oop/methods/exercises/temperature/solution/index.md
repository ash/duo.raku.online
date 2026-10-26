---
title: 'Решение: Перевод температуры'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Метод использует собственный атрибут `degrees` объекта. Поэтому для формулы не нужно передавать никакой аргумент.

1. Для `100` градусов Цельсия результат равен `212` градусам Фаренгейта.

{% include nav.html %}
