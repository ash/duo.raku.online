---
title: 'Решение: Найдите метод'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `.^find_method` возвращает метод, если он существует. Если его нет, он возвращает неопределённое значение. Затем `so` превращает это в обычное булево значение.

1. Сам `Dog` не определяет методов, но результат всё равно `True`. `find_method` ищет по всей цепочке наследования и находит `speak` выше, в `Animal`. Так же и настоящий вызов метода у `Dog` находит унаследованный метод.

{% include nav.html %}
