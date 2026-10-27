---
title: 'Решение: Утроение как метод'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Исходный код можно найти в файле [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Вывод

```
21
```

## Комментарии

1. Здесь `triple` — это метод. Он принадлежит объекту. Он работает с `n` самого объекта. Вы ничего ему не передаёте.

1. Сравните это с подпрограммой. Там данные приходят как аргумент. Здесь данные лежат в объекте. Обе программы дают `21`.

{% include nav.html %}
