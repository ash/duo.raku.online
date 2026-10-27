---
title: 'Розв''язання: Видаліть файл'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `spurt` створює файл. Тож перша перевірка `.e` дає `True`.

1. `unlink` видаляє файл. Тоді друга перевірка `.e` дає `False`. Файлу більше немає. Зверніть увагу: ми використовуємо `.e`, а не `.f`. `.f` перевіряє тип шляху. Він дає помилку, якщо шляху більше немає. Але `.e` просто відповідає `False`.

{% include nav.html %}
