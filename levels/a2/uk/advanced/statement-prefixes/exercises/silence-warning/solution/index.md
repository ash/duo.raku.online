---
title: 'Розв''язання: Приглушіть попередження'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Вихідний код можна знайти у файлі [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Вивід

```
Hello, !
```

## Коментарі

1. Тут невизначений `$name` іде в рядок. Зазвичай це дає попередження: «use of uninitialized value». Але вираз стоїть усередині `quietly`. Тож попередження приховане. Програма виводить лише привітання.

1. Як і `do`, `quietly` повертає значення свого блоку. Тож програма зберігає новий рядок у `$greeting`. Імені немає, тому в рядку є порожній проміжок.

1. `quietly` лише ховає попередження. Значення все одно невизначене. Можливо, ви хочете *обробити* відсутнє значення. Тоді дайте типове значення за допомогою оператора «визначене або» `//`. `$name // 'friend'` дає `'friend'`, коли `$name` не визначено. Тож `"Hello, " ~ ($name // 'friend') ~ "!"` виводить `Hello, friend!`. Попередження немає зовсім.

{% include nav.html %}
