---
title: 'Розв''язання: Типове значення контейнера'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Трейт `is default(0)` дає контейнеру типове значення. Програма нічого не присвоює `$count`. Тож `$count` повертає типове значення. Перший рядок виводить `0`.

1. `.VAR.default` питає в контейнера його типове значення. Воно теж `0`. Без трейта типове значення інше. Тоді контейнер без типу має типове значення `(Any)`.

{% include nav.html %}
