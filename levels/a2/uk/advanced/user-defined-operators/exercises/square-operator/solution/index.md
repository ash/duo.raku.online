---
title: 'Розв''язання: Оператор піднесення до квадрата'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Ми оголошуємо оператор як `postfix:<²>`. Його символ — маленька двійка вгорі. Ви пишете його після операнда, як у `5²`.

1. Тіло підносить операнд до другого степеня. Тож `5²` дає `25`. Ви можете вільно використовувати символ Unicode. Він може виглядати точно як у математиці.

{% include nav.html %}
