---
title: 'Решение: Добавьте метод'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Исходный код можно найти в файле [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Вывод

```
Rex says woof
```

## Комментарии

1. `.^add_method` добавляет новый метод в метаобъект класса во время работы программы. Вы задаёте метод как анонимный `method { … }`.

1. Добавленный метод — настоящий метод класса. Поэтому внутри него `$.name` обращается к атрибуту `name` объекта. Метод, написанный в теле класса, сделал бы то же самое. После этого вызова каждый `Dog` отвечает на `.speak`.

{% include nav.html %}
