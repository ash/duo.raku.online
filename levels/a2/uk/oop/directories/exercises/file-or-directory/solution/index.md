---
title: 'Розв''язання: Файл чи каталог?'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Вихідний код можна знайти у файлі [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Вивід

```
True
False
```

## Коментарі

1. `.f` перевіряє, чи це звичайний файл. Тож для `a.txt` він повертає `True`.

1. `.d` перевіряє, чи це каталог. Ми питаємо його про той самий шлях. Він повертає `False`. `a.txt` — це файл, а не каталог. Ці дві перевірки працюють у парі. Вони показують, файл це чи каталог.

{% include nav.html %}
