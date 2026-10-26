---
title: 'Решение: Типизированный MAIN'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Исходный код можно найти в файле [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Вывод

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Комментарии

1. Тип `Int` означает, что слово из командной строки должно выглядеть как целое число. При `5` значение попадает в `$n`, и тело выводит `10`.

1. При `abc` значение не может стать `Int`, поэтому сигнатура не совпадает. Raku не выполняет тело. Вместо этого он выводит созданное им сообщение об использовании. Так Raku проверяет аргументы за вас. Вам не нужно самим писать никаких проверок.

{% include nav.html %}
