---
title: 'Solution: Подвійне заперечення'
---

{% include menu.html %}

Давайте додамо код для другої частини завдання. Ми знову використовуємо ту саму змінну:

## Код

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Ви можете знайти повний код у файлі [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Коментарі

Поки не запускайте програму. Спершу подумаймо: що вона виведе? Перед змінною стоять два оператори заперечення. Заперечення змінює `False` на `True` і `True` на `False`. Тут два `!` працюють як два окремі оператори заперечення. У першому випадку перше заперечення змінює `False` на `True`. Потім друге заперечення одразу змінює його назад на `False`. Другий випадок працює так само. Після двох заперечень ми знову маємо початкове булеве значення.

## Вивід

Ось вивід програми. Він показує, що ми мали рацію:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
