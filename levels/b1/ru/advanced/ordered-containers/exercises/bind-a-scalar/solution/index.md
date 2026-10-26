---
title: 'Решение: Свяжите скаляр'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Исходный код можно найти в файле [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Вывод

```
9
1
```

## Комментарии

1. Связывание через `:=` не создаёт копию. Оно делает `$bound` ещё одним именем того же контейнера, что и `$source`. Поэтому изменение `$source` видно через `$bound`, и он печатает `9`.

1. Обычное присваивание через `=` копирует значение в отдельный контейнер. Поэтому более позднее изменение не влияет на `$copy`, и он по-прежнему печатает `1`.

1. Весь смысл в том, чтобы увидеть их рядом. `:=` делает контейнер общим, а `=` делает копию значения.

{% include nav.html %}
