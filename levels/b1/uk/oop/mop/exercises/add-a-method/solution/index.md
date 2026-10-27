---
title: 'Розв''язання: Додайте метод'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `.^add_method` додає новий метод до метаоб'єкта класу під час виконання. Метод ви задаєте як анонімний `method { … }`.

1. Доданий метод — це справжній метод класу. Тож усередині нього `$.name` дістає атрибут `name` об'єкта. Метод, написаний у тілі класу, робив би те саме. Після цього виклику кожен `Dog` відгукується на `.speak`.

{% include nav.html %}
