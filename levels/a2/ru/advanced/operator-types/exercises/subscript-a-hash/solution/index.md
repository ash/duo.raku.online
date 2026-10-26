---
title: 'Решение: Индексация хеша'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Обращение по индексу `< >` — это постциркумфиксный оператор. Он идёт после терма, здесь это хеш. И он стоит вокруг ключа.

1. `%h<a>` возвращает значение по ключу `a`. Это значение равно `1`.

{% include nav.html %}
