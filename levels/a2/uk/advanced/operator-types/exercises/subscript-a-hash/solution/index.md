---
title: 'Розв''язання: Індексуйте хеш'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Вихідний код можна знайти у файлі [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Вивід

```
1
```

## Коментарі

1. Індекс `< >` — це постциркумфіксний оператор. Він іде після терма, тут це хеш. І він стоїть навколо ключа.

1. `%h<a>` повертає значення для ключа `a`. Це значення — `1`.

{% include nav.html %}
