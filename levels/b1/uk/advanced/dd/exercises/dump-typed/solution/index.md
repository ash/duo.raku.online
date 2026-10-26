---
title: 'Розв''язання: Вивести дамп типізованої змінної'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Змінна має оголошений тип, тому `dd` виводить його перед іменем: `Int $n = 42`.

1. Для нетипізованої змінної `dd` вивела б просто `$n = 42`, без типу попереду.

{% include nav.html %}
