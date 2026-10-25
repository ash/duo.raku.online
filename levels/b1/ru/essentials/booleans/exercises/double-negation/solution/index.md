---
title: 'Решение: Двойная инверсия'
---

{% include menu.html %}

Чтобы решить вторую часть упражнения, давайте дополним программу. Мы можем снова использовать ту же переменную:

## Код

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Вы можете найти исходный код в файле [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Комментарии

Прежде чем запускать программу, давайте подумаем, что она выведет. Перед переменной стоят два оператора инверсии. Они работают как две отдельные инверсии. В первом случае значение меняется с `False` на `True`. Потом оно сразу меняется обратно с `True` на `False`. Второй случай работает так же. После двух инверсий мы получаем исходное булево значение.

## Вывод

Программа выводит следующее, и это показывает, что мы были правы:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% assign human=1 %}
{% include nav.html %}
