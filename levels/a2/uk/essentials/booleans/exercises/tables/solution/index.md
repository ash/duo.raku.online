---
title: 'Solution: Логічні таблиці'
---

{% include menu.html %}

Ось один спосіб розв'язати завдання. Програма виводить усі результати булевих операцій.

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

Запустіть програму. Вона виводить таку таблицю.

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

Зверніть увагу: тут не потрібні дужки навколо булевих операцій. Причина в пріоритеті. Пріоритет — це порядок, у якому Raku виконує операції. Булеві операції мають вищий пріоритет. Тому Raku виконує їх першими. Але з конкатенацією рядків дужки потрібні:

```raku
say 'True && True is ' ~ (True && True);
```

Ви також можете вставити код усередину рядка. Це називається [інтерполяцією коду](/uk/essentials/strings/code-interpolation).

{% include nav.html %}
