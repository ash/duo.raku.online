---
title: 'Решение: Перевёрнутое слово'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Метод `reversed` получает собственный `text` объекта через его аксессор, `$.text`. Затем он вызывает у него встроенный `flip`, который переворачивает строку.

1. Метод вызывается прямо у нового объекта `Word`. Ничего не сохраняется обратно в объект. `reversed` просто вычисляет новое значение из атрибута и возвращает его.

1. Обратите внимание, что внутри класса аксессор не нужен. Переменную можно читать напрямую:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
