---
title: 'Решение: Утроение как метод'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Как метод, `triple` принадлежит объекту и использует `n` этого объекта. Передавать ничего не нужно.

1. В варианте с подпрограммой данные приходят как аргумент. Здесь же данные живут в объекте. Оба варианта дают `21`.

{% include nav.html %}
