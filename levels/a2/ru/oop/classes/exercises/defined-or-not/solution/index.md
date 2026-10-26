---
title: 'Решение: Определён или нет'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Цикл проходит по двум объектам типа, `Cat` и `Dog`. Ещё он проходит по двум экземплярам, `Cat.new` и `Dog.new`.

1. Два объекта типа не определены. Поэтому `defined` возвращает для них `False`. Два экземпляра определены. Поэтому `defined` возвращает для них `True`. Здесь важно только одно. Значение — это объект типа или настоящий экземпляр? Класс значения не важен.

{% include nav.html %}
