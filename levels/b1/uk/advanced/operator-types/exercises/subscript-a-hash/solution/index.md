---
title: 'Розв''язання: Індексуйте хеш'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Індекс `< >` — це постциркумфіксний оператор. Він іде після терма, тобто хешу, і стоїть навколо ключа.

1. `%h<a>` дає значення під ключем `a`. Це значення — `1`.

{% include nav.html %}
