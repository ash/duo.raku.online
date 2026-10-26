---
title: 'Решение: Существует ли ключ'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Наречие `:exists` говорит, есть ли этот ключ. Оно не получает значение.

1. В хеше нет ключа `z`. Поэтому результат — `False`. Обычное обращение может создать ключ как побочный эффект. `:exists` так не делает.

{% include nav.html %}
