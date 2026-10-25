---
title: 'Решение: Таблицы истинности'
---

{% include menu.html %}

Вот одна из возможных программ. Она выводит результаты всех логических операций.

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

🦋 Вы можете найти исходный код в файле [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Вывод

Когда вы запустите программу, она выведет следующую таблицу.

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

## Комментарии

Заметьте, что здесь логическим операциям не нужны скобки. У них более высокий приоритет. Но это не так, если вы используете конкатенацию строк:

```raku
say 'True && True is ' ~ (True && True);
```

Ещё один способ — использовать [интерполяцию кода](/ru/essentials/strings/code-interpolation).

{% assign human=1 %}
{% include nav.html %}
