---
title: 'Solution: Съществува ли ключът'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Можете да намерите изходния код във файла [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Изход

```
False
```

## Коментари

1. Наречието `:exists` ви казва дали ключът е наличен. То не взима стойността.

1. В хеша няма ключ `z`, затова резултатът е `False`. Обикновеното търсене може да създаде ключа като страничен ефект, но `:exists` не го прави.

{% include nav.html %}
