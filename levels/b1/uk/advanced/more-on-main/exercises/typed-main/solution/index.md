---
title: 'Розв''язання: Типізований MAIN'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Тип `Int` означає, що слово з командного рядка має виглядати як ціле число. Коли це `5`, значення потрапляє в `$n`, і тіло виводить `10`.

1. Коли це `abc`, значення не може стати `Int`, тож сигнатура не збігається. Raku не виконує тіло. Натомість він виводить згенероване повідомлення про використання. Тож Raku перевіряє аргументи за вас. Вам не треба самим писати жодних перевірок.

{% include nav.html %}
