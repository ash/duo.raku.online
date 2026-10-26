---
title: 'Розв''язання: Переведення температури'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Метод використовує власний атрибут `degrees` об'єкта. Тож для формули не треба передавати жодного аргументу.

1. Для `100` градусів Цельсія результатом є `212` градусів Фаренгейта.

{% include nav.html %}
