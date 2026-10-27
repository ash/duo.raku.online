---
title: 'Решение: Файл или каталог?'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `.f` проверяет, обычный ли это файл. Поэтому для `a.txt` он возвращает `True`.

1. `.d` проверяет, каталог ли это. Мы спрашиваем его о том же самом пути. Он возвращает `False`. `a.txt` — это файл, а не каталог. Две проверки работают в паре. Они показывают, файл это или каталог.

{% include nav.html %}
