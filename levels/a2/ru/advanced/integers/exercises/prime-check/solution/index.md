---
title: 'Решение: Простое или нет'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Исходный код можно найти в файле [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Вывод

```
True
False
```

## Комментарии

1. Число `97` можно разделить только на `1` и на само себя. Поэтому `is-prime` возвращает `True`.

1. `91` кажется простым, но это `7 × 13`. Поэтому `is-prime` возвращает `False`. Метод сам находит множители за вас. Для этого он и нужен.

{% include nav.html %}
