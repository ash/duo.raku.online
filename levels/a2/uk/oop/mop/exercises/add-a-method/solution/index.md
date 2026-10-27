---
title: 'Розв''язання: Додайте метод'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Вихідний код можна знайти у файлі [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Вивід

```
Rex says woof
```

## Коментарі

1. `.^add_method` додає новий метод до метаоб'єкта класу. Він робить це, поки програма працює. Новий метод ви задаєте як анонімний `method { … }`. Це означає, що метод не має власного імені.

1. Новий метод — це справжній метод класу. Тож усередині нього `$.name` бере атрибут `name` об'єкта. Метод у тілі класу робить те саме. Після виклику `.^add_method` можна викликати `.speak` для кожного `Dog`.

{% include nav.html %}
