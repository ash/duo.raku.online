---
title: 'Розв''язання: Додайте два аргументи'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Вихідний код можна знайти у файлі [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Вивід

```console
$ raku two-arguments.raku 2 3
5
```

## Коментарі

1. Два позиційні параметри отримують два слова з командного рядка.

1. Аргументи командного рядка надходять як рядки, але оператор `+` перетворює їх на числа. Тож `2` і `3` у сумі дають `5`.

{% include nav.html %}
