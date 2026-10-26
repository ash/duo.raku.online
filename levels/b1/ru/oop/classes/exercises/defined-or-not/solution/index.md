---
title: 'Решение: Определён или нет'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Исходный код можно найти в файле [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Вывод

```
False
False
True
True
```

## Комментарии

1. Цикл проходит по смешанному набору значений. Два из них — объекты типа, `Cat` и `Dog`, а два — экземпляры, `Cat.new` и `Dog.new`.

1. Оба объекта типа не определены, поэтому `defined` возвращает для них `False`. Оба экземпляра определены, поэтому он возвращает `True`. Значит, важно, является ли значение объектом типа или настоящим экземпляром. Класс значения не важен.

{% include nav.html %}
