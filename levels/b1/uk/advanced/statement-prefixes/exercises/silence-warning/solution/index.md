---
title: 'Розв''язання: Приглушіть попередження'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Якщо вставити невизначений `$name` у рядок, зазвичай з'являється попередження «use of uninitialized value». Коли навколо виразу стоїть `quietly`, попередження приховане, тож виводиться лише привітання.

1. Як і `do`, `quietly` повертає значення свого блоку. Тож готовий рядок зберігається в `$greeting`. Відсутнє ім'я лишає в ньому порожній проміжок.

1. `quietly` лише ховає попередження, а значення все одно залишається невизначеним. Якщо ж ви хочете *впоратися* з відсутнім значенням, дайте типове значення. Для цього використайте оператор «визначене або» `//`. `$name // 'friend'` дає `'friend'`, коли `$name` не визначено. Тож `"Hello, " ~ ($name // 'friend') ~ "!"` виводить `Hello, friend!` взагалі без попереджень.

{% include nav.html %}
