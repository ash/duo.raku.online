---
title: 'Решение: Километры в мили'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Исходный код можно найти в файле [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Вывод

```
6.21
```

## Комментарии

1. Перевод не зависит ни от какого конкретного объекта. Поэтому это метод класса, и программа вызывает его прямо у `Converter`.

1. Метод класса всё равно может принимать параметры. Здесь он получает число километров и возвращает мили.

{% include nav.html %}
