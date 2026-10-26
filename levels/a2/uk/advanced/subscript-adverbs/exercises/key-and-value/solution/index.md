---
title: 'Розв''язання: Ключ і значення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Вихідний код можна знайти у файлі [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Вивід

```
(x 10)
```

## Коментарі

1. Наріччя `:kv` повертає ключ і значення. Воно дає їх як список.

1. Для хеша ключ — це ім'я в індексі. Тож `%h<x>:kv` дає список `(x 10)`.

{% include nav.html %}
