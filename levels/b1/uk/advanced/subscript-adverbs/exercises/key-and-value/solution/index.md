---
title: 'Розв''язання: Ключ і значення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Наріччя `:kv` дає вам і ключ, і значення у списку.

1. Для хеша ключ — це ім'я, яке ви використовуєте в індексі. Тож `%h<x>:kv` дає список `(x 10)`.

{% include nav.html %}
