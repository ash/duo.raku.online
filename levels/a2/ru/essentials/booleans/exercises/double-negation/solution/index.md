---
title: 'Решение: Двойная инверсия'
---

{% include menu.html %}

Давайте добавим код для второй части задачи. Мы снова используем ту же переменную:

## Код

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Вы можете найти исходный код в файле [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Комментарии

Пока не запускайте программу. Сначала давайте подумаем: что она выводит? Перед переменной стоят два оператора инверсии. Инверсия меняет `False` на `True`, а `True` на `False`. Здесь два знака `!` работают как два отдельных оператора инверсии. В первом случае первая инверсия меняет `False` на `True`. Потом вторая инверсия сразу меняет значение обратно на `False`. Второй случай работает так же. После двух инверсий мы получаем начальное булево значение.

## Вывод

Вот вывод программы. Он показывает, что мы были правы:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% assign human=1 %}
{% include nav.html %}
