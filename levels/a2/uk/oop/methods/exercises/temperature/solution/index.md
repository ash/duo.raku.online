---
title: 'Розв''язання: Переведення температури'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Вивід

```
212
```

## Коментарі

1. Метод використовує атрибут `degrees` об'єкта. Тож формулі не потрібен аргумент.

1. `100` градусів Цельсія — це `212` градусів Фаренгейта.

{% include nav.html %}
