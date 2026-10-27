---
title: 'Решение: Удалите файл'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `spurt` создаёт файл, поэтому первая проверка `.e` даёт `True`.

1. `unlink` удаляет файл. Тогда вторая проверка `.e` даёт `False`, потому что файла больше нет. Заметьте, что мы используем `.e`, а не `.f`. Проверка типа `.f` выдала бы ошибку для пути, которого больше нет. А `.e` просто отвечает `False`.

{% include nav.html %}
