---
title: 'Розв''язання: Типізований MAIN'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Вихідний код можна знайти у файлі [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Вивід

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Коментарі

1. Параметр має тип `Int`. Тож слово в командному рядку мусить бути схожим на ціле число. Значення `5` потрапляє в `$n`. Тоді тіло виводить `10`.

1. Значення `abc` не може стати `Int`. Тож сигнатура не збігається. Raku не виконує тіло. Натомість він виводить повідомлення про використання. Raku сам створює це повідомлення. Тож Raku перевіряє аргументи за вас. Ви самі не пишете жодних перевірок.

{% include nav.html %}
