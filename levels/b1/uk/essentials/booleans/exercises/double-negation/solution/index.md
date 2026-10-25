---
title: 'Solution: Подвійне заперечення'
---

{% include menu.html %}

Щоб розв'язати другу частину вправи, давайте розширимо програму. Ми можемо знову використати ту саму змінну:

## Код

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Ви можете знайти повний код у файлі [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Коментарі

Перш ніж запускати програму, давайте подумаємо, що вона виведе. Перед змінною є два оператори заперечення. Вони працюють як два окремі заперечення. У першому випадку значення змінюється з `False` на `True`. Потім воно одразу змінюється назад з `True` на `False`. Другий випадок працює так само. Після двох заперечень ми отримуємо початкове булеве значення.

## Вивід

Програма виводить такий результат, який показує, що ми мали рацію:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
