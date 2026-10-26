---
title: 'Решение: Сложение двух аргументов'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Исходный код можно найти в файле [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Вывод

```console
$ raku two-arguments.raku 2 3
5
```

## Комментарии

1. Два позиционных параметра получают два слова из командной строки.

1. Аргументы командной строки приходят как строки, но оператор `+` превращает их в числа. Поэтому `2` и `3` в сумме дают `5`.

{% include nav.html %}
