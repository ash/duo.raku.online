---
title: 'Розв''язання: Кілометри в милі'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Вихідний код можна знайти у файлі [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Вивід

```
6.21
```

## Коментарі

1. Переведення не залежить від жодного конкретного об'єкта. Тож це метод класу, і програма викликає його прямо для `Converter`.

1. Метод класу все одно може приймати параметри. Тут він отримує кількість кілометрів і повертає милі.

{% include nav.html %}
