---
title: 'Решение: Перевернуть и прокричать'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
say 'raku'.flip.uc;
```

🦋 Исходный код можно найти в файле [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Вывод

```
UKAR
```

## Комментарии

1. Методы работают слева направо. Сначала `flip` превращает `'raku'` в `'ukar'`. Потом `uc` превращает это в `'UKAR'`.

1. Каждый метод возвращает новую строку. Поэтому их можно соединить в цепочку в одном выражении.

{% include nav.html %}
