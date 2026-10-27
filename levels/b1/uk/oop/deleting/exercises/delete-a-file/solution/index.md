---
title: 'Розв''язання: Видаліть файл'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Вихідний код можна знайти у файлі [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Вивід

```
True
False
```

## Коментарі

1. `spurt` створює файл, тож перша перевірка `.e` дає `True`.

1. `unlink` видаляє файл. Тоді друга перевірка `.e` дає `False`, бо файлу вже немає. Зверніть увагу, що ми використовуємо `.e`, а не `.f`. Перевірка типу `.f` дала б помилку для шляху, якого вже немає. А `.e` просто відповідає `False`.

{% include nav.html %}
