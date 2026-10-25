---
title: 'Решение: Таблицы истинности'
---

{% include menu.html %}

Вот один способ решить задачу. Программа выводит все результаты логических операций.

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

Запустите программу. Она выводит такую таблицу.

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

Заметьте, что здесь не нужны скобки вокруг логических операций. Это из-за приоритета. Приоритет — это порядок, в котором Raku выполняет операции. У логических операций приоритет выше. Поэтому Raku выполняет их первыми. Но с конкатенацией строк скобки нужны:

```raku
say 'True && True is ' ~ (True && True);
```

Вы также можете вставить код внутрь строки. Это называется [интерполяцией кода](/ru/essentials/strings/code-interpolation).

{% assign human=1 %}
{% include nav.html %}
