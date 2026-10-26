---
title: 'Решение: Существует ли ключ'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Исходный код можно найти в файле [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Вывод

```
False
```

## Комментарии

1. Наречие `:exists` сообщает, есть ли такой ключ. Оно не берёт само значение.

1. В хеше нет ключа `z`, поэтому результат — `False`. Обычное обращение может создать ключ как побочный эффект, а `:exists` — нет.

{% include nav.html %}
