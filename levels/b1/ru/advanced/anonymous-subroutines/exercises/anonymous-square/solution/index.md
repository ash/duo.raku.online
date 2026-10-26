---
title: 'Решение: Анонимный квадрат'
translations_gpt: true
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Исходный код можно найти в файле [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Вывод

```
(1 4 9)
```

## Комментарии

1. У `sub ($x) { $x * $x }` нет имени, и она никогда не сохраняется в переменной. Она попадает прямо в `map` как его аргумент.

1. `map` применяет её к каждому элементу `1, 2, 3` и возводит их в квадрат, что даёт `(1 4 9)`. Чаще всего анонимную подпрограмму пишут как раз для того, чтобы вот так передать её прямо в вызов.

{% include nav.html %}
