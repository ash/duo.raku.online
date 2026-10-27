---
title: 'Решение: Добавете метод'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Намерете програмата във файла [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Изход

```
Rex says woof
```

## Коментари

1. `.^add_method` добавя нов метод към метаобекта на класа. Той прави това, докато програмата работи. Давате новия метод като анонимен `method { … }`. Това значи, че методът няма свое име.

1. Новият метод е истински метод на класа. Затова вътре в него `$.name` взема атрибута `name` на обекта. Метод в тялото на класа прави същото. След извикването на `.^add_method` можете да извикате `.speak` върху всеки `Dog`.

{% include nav.html %}
