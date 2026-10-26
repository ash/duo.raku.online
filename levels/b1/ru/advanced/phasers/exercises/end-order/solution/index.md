---
title: 'Решение: Порядок END'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Найдите программу в файле [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Вывод

```
body
second END
first END
```

## Комментарии

1. Оба фейзера `END` выполняются после основного кода, поэтому программа выводит `body` первым.

1. Несколько фейзеров `END` выполняются по правилу «последним пришёл — первым ушёл». `second END` объявлен позже, поэтому он выполняется раньше, чем `first END`. Это похоже на очистку, которая обычно должна сначала отменить самую последнюю настройку.

{% include nav.html %}
