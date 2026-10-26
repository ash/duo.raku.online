---
title: 'Розв''язання: Спочатку BEGIN'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Вихідний код можна знайти у файлі [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Вивід

```
5
```

## Коментарі

1. `BEGIN { 2 + 3 }` виконується під час компіляції. Він дає `5`. Тут блок `BEGIN` — це вираз. Тож він повертає своє значення. Програма кладе це значення в `$compiled`.

1. Обчислення відбувається лише раз, під час компіляції. Коли програма працює, `$compiled` просто зберігає стале значення `5`. Тож за допомогою `BEGIN` можна рано обчислювати значення. Він потрібен не лише для раннього друку.

{% include nav.html %}
