---
title: 'Решение: Оператор возведения в квадрат'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Исходный код можно найти в файле [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Вывод

```
25
```

## Комментарии

1. Оператор объявлен как `postfix:<²>`. Поэтому его символ, надстрочная двойка, стоит после операнда, как в `5²`.

1. Тело возводит операнд во вторую степень, поэтому `5²` даёт `25`. Ничто не мешает вам использовать символ Юникода, который выглядит как обычная математическая запись.

{% include nav.html %}
