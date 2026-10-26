---
title: 'Розв''язання: Типове значення контейнера'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

## Код

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Вихідний код можна знайти у файлі [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Вивід

```
0
0
```

## Коментарі

1. Трейт `is default(0)` дає контейнеру типове значення. Нічого ще не присвоєно, тож читання `$count` повертає це типове значення. Тому перший рядок виводить `0`.

1. `.VAR.default` питає в самого контейнера типове значення, яке йому дали, і воно теж дорівнює `0`. Без трейта типовим значенням контейнера без типу було б `(Any)`.

{% include nav.html %}
