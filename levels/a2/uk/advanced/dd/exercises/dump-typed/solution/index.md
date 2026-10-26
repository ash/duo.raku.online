---
title: 'Розв''язання: Вивести дамп типізованої змінної'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my Int $n = 42;
dd $n;
```

🦋 Вихідний код можна знайти у файлі [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Вивід

```
Int $n = 42
```

## Коментарі

1. Змінна має оголошений тип. Тому `dd` виводить тип перед іменем: `Int $n = 42`.

1. Для змінної без типу `dd` виводить лише `$n = 42`. Типу попереду немає.

{% include nav.html %}
