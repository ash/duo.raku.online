---
title: 'Решение: Перевернуть и прокричать'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. Методы выполняются слева направо. Сначала `flip` переворачивает `'raku'` в `'ukar'`, а затем `uc` превращает это в `'UKAR'`.

1. Каждый метод возвращает новую строку, поэтому их можно объединить в цепочку в одном выражении.

{% include nav.html %}
