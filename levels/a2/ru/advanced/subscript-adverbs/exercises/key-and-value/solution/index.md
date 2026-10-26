---
title: 'Решение: Ключ и значение'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Наречие `:kv` возвращает ключ и значение. Оно даёт их в виде списка.

1. Для хеша ключ — это имя в обращении по индексу. Поэтому `%h<x>:kv` даёт список `(x 10)`.

{% include nav.html %}
