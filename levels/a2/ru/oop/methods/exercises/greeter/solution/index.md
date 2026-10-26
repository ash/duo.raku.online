---
title: 'Решение: Перевёрнутое слово'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Исходный код можно найти в файле [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Вывод

```
ukaR
```

## Комментарии

1. Метод `reversed` берёт `text` объекта. Для этого он использует аксессор `$.text`. Потом он вызывает у него встроенный метод `flip`. `flip` возвращает строку задом наперёд.

1. Программа вызывает метод прямо у нового объекта `Word`. Метод ничего не сохраняет. `reversed` только делает новое значение из атрибута и возвращает его.

1. Внутри класса переменную можно читать и напрямую. Аксессор для этого не нужен:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
