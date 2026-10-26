---
title: 'Решение: Вывод хеша'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `dd` печатает хеш в форме, похожей на код. Каждая пара выглядит как `:ключ(значение)`.

1. Ключи идут в отсортированном порядке. Поэтому `alpha` стоит перед `beta`. Но в коде `beta` стоит первой.

{% include nav.html %}
