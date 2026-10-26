---
title: 'Решение: Удаление ключа'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Исходный код можно найти в файле [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Вывод

```
2
```

## Комментарии

1. Наречие `:delete` удаляет запись из хеша. Оно также возвращает значение, но здесь мы его не используем.

1. Сначала в хеше было три записи. Теперь в нём `2`. Значит, одной записи больше нет. Мы считаем записи с помощью `.elems`. Порядок ключей здесь не важен. Поэтому вывод всегда одинаковый.

{% include nav.html %}
