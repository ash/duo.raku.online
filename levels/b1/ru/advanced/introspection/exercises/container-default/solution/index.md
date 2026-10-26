---
title: 'Решение: Значение по умолчанию контейнера'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Исходный код можно найти в файле [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Вывод

```
0
0
```

## Комментарии

1. Трейт `is default(0)` даёт контейнеру значение по умолчанию. Ничего ещё не присвоено, поэтому при чтении `$count` возвращается это значение. Вот почему первая строка печатает `0`.

1. `.VAR.default` спрашивает у самого контейнера, какое значение по умолчанию ему дали, и это тоже `0`. Без трейта значение по умолчанию у контейнера без типа было бы `(Any)`.

{% include nav.html %}
