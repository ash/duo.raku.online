---
title: 'Решение: Ключ и значение'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Исходный код можно найти в файле [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Вывод

```
(x 10)
```

## Комментарии

1. Наречие `:kv` даёт вам и ключ, и значение в виде списка.

1. Для хеша ключ — это имя, которое вы используете при обращении. Поэтому `%h<x>:kv` даёт список `(x 10)`.

{% include nav.html %}
