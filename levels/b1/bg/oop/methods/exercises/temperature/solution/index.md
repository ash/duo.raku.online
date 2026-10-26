---
title: 'Решение: Преобразуване на температура'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

🦋 Намерете програмата във файла [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Изход

```
212
```

## Коментари

1. Методът използва собствения атрибут `degrees` на обекта. Затова не е нужно да подавате аргумент за формулата.

1. За `100` градуса по Целзий резултатът е `212` градуса по Фаренхайт.

{% include nav.html %}
