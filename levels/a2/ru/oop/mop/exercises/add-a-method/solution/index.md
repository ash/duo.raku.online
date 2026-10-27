---
title: 'Решение: Добавьте метод'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `.^add_method` добавляет новый метод в метаобъект класса. Он делает это, пока программа работает. Новый метод вы даёте как анонимный `method { … }`. Это значит, что у метода нет своего имени.

1. Новый метод — это настоящий метод класса. Поэтому внутри него `$.name` получает атрибут `name` объекта. Метод в теле класса делает то же самое. После вызова `.^add_method` можно вызывать `.speak` у любого `Dog`.

{% include nav.html %}
