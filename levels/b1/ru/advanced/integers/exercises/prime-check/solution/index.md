---
title: 'Решение: Простое или нет'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. У `97` нет делителей, кроме `1` и самого себя, поэтому `is-prime` возвращает `True`.

1. `91` кажется простым, но это `7 × 13`, поэтому `is-prime` возвращает `False`. Метод находит множители за вас. В этом и есть весь его смысл.

{% include nav.html %}
