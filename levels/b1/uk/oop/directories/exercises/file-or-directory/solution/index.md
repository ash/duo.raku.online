---
title: 'Розв''язання: Файл чи каталог?'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `.f` перевіряє, чи шлях веде до звичайного файлу, тож для `a.txt` він повертає `True`.

1. `.d` перевіряє, чи це каталог. Для того самого шляху він повертає `False`. Це тому, що `a.txt` — файл, а не каталог. Дві перевірки доповнюють одна одну. Саме так можна відрізнити файл від каталогу.

{% include nav.html %}
