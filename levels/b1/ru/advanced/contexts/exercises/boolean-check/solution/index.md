---
title: 'Решение: Булева проверка'
translations_gpt: Решение задачи «Логическая проверка»
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my @empty;
say ?@empty;
```

🦋 Исходный код можно найти в файле [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Вывод

```
False
```

## Комментарии

1. Префикс `?` задаёт логический контекст.

1. Пустой массив — ложный, и именно от этого зависит `if @array`.

{% include nav.html %}
