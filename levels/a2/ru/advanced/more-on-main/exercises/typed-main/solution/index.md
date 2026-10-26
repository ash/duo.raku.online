---
title: 'Решение: Типизированный MAIN'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. У параметра тип `Int`. Поэтому слово в командной строке должно выглядеть как целое число. Значение `5` попадает в `$n`. Потом тело печатает `10`.

1. Значение `abc` не может стать `Int`. Поэтому сигнатура не подходит. Raku не выполняет тело. Вместо этого он выводит сообщение об использовании. Raku сам создаёт это сообщение. Так Raku проверяет аргументы за вас. Вы сами не пишете никаких проверок.

{% include nav.html %}
