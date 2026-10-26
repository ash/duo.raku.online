---
title: 'Решение: Километры в мили'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Для перевода не нужен никакой объект. Поэтому это метод класса. Программа вызывает его прямо у `Converter`.

1. У метода класса всё равно могут быть параметры. Здесь он получает число километров. Он возвращает мили.

{% include nav.html %}
