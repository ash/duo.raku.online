---
title: 'Решение: Удалите файл'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Исходный код можно найти в файле [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Вывод

```
True
False
```

## Комментарии

1. `spurt` создаёт файл. Поэтому первая проверка `.e` даёт `True`.

1. `unlink` удаляет файл. Тогда вторая проверка `.e` даёт `False`. Файла больше нет. Заметьте, что мы используем `.e`, а не `.f`. `.f` проверяет тип пути. Этот метод выдаёт ошибку, если пути больше нет. А `.e` просто отвечает `False`.

{% include nav.html %}
