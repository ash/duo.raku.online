---
title: 'Решение: Найдите метод'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Исходный код можно найти в файле [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Вывод

```
True
```

## Комментарии

1. `.^find_method` возвращает метод, если он есть. Если нет, он возвращает неопределённое значение. `so` превращает это в простое булево значение, `True` или `False`.

1. У `Dog` нет своих методов. Но результат — `True`. `find_method` просматривает всю цепочку наследования. Он находит `speak` выше, в `Animal`. Настоящий вызов метода у `Dog` работает так же. Он тоже так находит унаследованный метод.

{% include nav.html %}
