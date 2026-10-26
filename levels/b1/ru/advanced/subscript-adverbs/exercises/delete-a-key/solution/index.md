---
title: 'Решение: Удаление ключа'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. Наречие `:delete` удаляет запись из хеша. Оно также возвращает значение, но здесь мы его игнорируем.

1. В начале в хеше было три записи, а теперь их `2`. Это показывает, что одна запись удалена. Мы считаем с помощью `.elems`, который не зависит от порядка ключей. Поэтому вывод всегда одинаковый.

{% include nav.html %}
