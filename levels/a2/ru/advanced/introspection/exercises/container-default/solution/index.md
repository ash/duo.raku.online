---
title: 'Решение: Значение по умолчанию контейнера'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Трейт `is default(0)` даёт контейнеру значение по умолчанию. Программа ничего не присваивает `$count`. Поэтому `$count` возвращает значение по умолчанию. Первая строка печатает `0`.

1. `.VAR.default` спрашивает у контейнера его значение по умолчанию. Это тоже `0`. Без трейта значение по умолчанию другое. Тогда у контейнера без типа значение по умолчанию — `(Any)`.

{% include nav.html %}
