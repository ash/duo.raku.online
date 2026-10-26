---
title: 'Решение: Оператор возведения в квадрат'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Мы объявляем оператор как `postfix:<²>`. Его символ — маленькая двойка вверху строки. Вы пишете его после операнда, как в `5²`.

1. Тело возводит операнд во вторую степень. Поэтому `5²` даёт `25`. Вы можете свободно использовать символ Юникода. Он может выглядеть прямо как в математике.

{% include nav.html %}
