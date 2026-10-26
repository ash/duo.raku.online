---
title: 'Решение: Вывод хеша'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Исходный код можно найти в файле [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Вывод

```
{:alpha(1), :beta(2)}
```

## Комментарии

1. `dd` выводит хеш в виде, похожем на код. Каждая пара показана как `:ключ(значение)`.

1. Ключи печатаются в отсортированном порядке, поэтому `alpha` идёт перед `beta`. Так происходит, хотя `beta` была записана первой.

{% include nav.html %}
