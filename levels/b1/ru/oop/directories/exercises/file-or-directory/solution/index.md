---
title: 'Решение: Файл или каталог?'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Исходный код можно найти в файле [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Вывод

```
True
False
```

## Комментарии

1. `.f` проверяет, обычный ли это файл, поэтому для `a.txt` он возвращает `True`.

1. `.d` проверяет, каталог ли это. Для того же самого пути он возвращает `False`. Это потому, что `a.txt` — файл, а не каталог. Две проверки дополняют друг друга. Именно так вы отличаете файл от каталога.

{% include nav.html %}
