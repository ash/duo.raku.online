---
title: 'Решение: Индексация хеша'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Исходный код можно найти в файле [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Вывод

```
1
```

## Комментарии

1. Обращение по индексу `< >` — это постциркумфиксный оператор. Он идёт после терма (хеша) и стоит вокруг ключа.

1. `%h<a>` даёт значение по ключу `a`. Это значение — `1`.

{% include nav.html %}
