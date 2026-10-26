---
title: 'Решение: Булево значение'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
say ?0;
say ?5;
```

🦋 Исходный код можно найти в файле [boolean-of-a-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/boolean-of-a-value.raku).

## Вывод

```
False
True
```

## Комментарии

1. `?` — это префиксный оператор. Он стоит перед своим операндом. Он возвращает булево значение операнда.

1. `0` — ложь, а `5` — истина. Поэтому программа выводит `False` и `True`.

{% include nav.html %}
