---
title: 'Solution: Логічні таблиці'
---

{% include menu.html %}

Ось одна можлива програма. Вона виводить результати всіх булевих операцій.

## Код

```raku
say 'True && True is ', True && True; 
say 'True && False is ', True && False;
say 'False && True is ', False && True;
say 'False && False is ', False && False;

say 'True || True is ', True || True; 
say 'True || False is ', True || False;
say 'False || True is ', False || True;
say 'False || False is ', False || False;

say 'True ^^ True is ', True ^^ True; 
say 'True ^^ False is ', True ^^ False;
say 'False ^^ True is ', False ^^ True;
say 'False ^^ False is ', False ^^ False;
```

🦋 Ви можете знайти повний код у файлі [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Вивід

Коли ви запустите програму, вона виведе наступну таблицю.

```console
$ raku tables.raku
True && True is True
True && False is False
False && True is False
False && False is False
True || True is True
True || False is True
False || True is True
False || False is False
True ^^ True is Nil
True ^^ False is True
False ^^ True is True
False ^^ False is False
```

## Коментарі

Зверніть увагу, що булевим операціям тут не потрібні дужки. Вони мають вищий пріоритет. Але це не так, якщо ви використовуєте конкатенацію рядків:

```raku
say 'True && True is ' ~ (True && True);
```

Інший спосіб — використати [інтерполяцію коду](/uk/essentials/strings/code-interpolation).

{% include nav.html %}
