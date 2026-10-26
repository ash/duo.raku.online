---
title: 'Решение: Свяжите скаляр'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Связывание через `:=` не делает копию. Оно делает `$bound` вторым именем для контейнера `$source`. Поэтому `$bound` видит изменение `$source`. Он печатает `9`.

1. Обычное присваивание через `=` копирует значение в другой контейнер. Поэтому позднее изменение не трогает `$copy`. Он всё ещё печатает `1`.

1. В этом смысл задачи. Вы видите два способа рядом. `:=` делает контейнер общим. `=` копирует значение.

{% include nav.html %}
