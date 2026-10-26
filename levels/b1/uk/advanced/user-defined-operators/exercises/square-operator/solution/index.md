---
title: 'Розв''язання: Оператор піднесення до квадрата'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Вихідний код можна знайти у файлі [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Вивід

```
25
```

## Коментарі

1. Оператор оголошено як `postfix:<²>`. Тож його символ, надрядкова двійка, стоїть після операнда, як у `5²`.

1. Тіло підносить операнд до другого степеня, тож `5²` дає `25`. Ніщо не заважає вам узяти символ Unicode, який схожий на звичний математичний запис.

{% include nav.html %}
