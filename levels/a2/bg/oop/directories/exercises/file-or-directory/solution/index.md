---
title: 'Решение: Файл или директория?'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Намерете програмата във файла [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Изход

```
True
False
```

## Коментари

1. `.f` проверява за обикновен файл. Затова връща `True` за `a.txt`.

1. `.d` проверява за директория. Питаме го за същия този път. Той връща `False`. `a.txt` е файл, а не директория. Двете проверки работят като двойка. Те показват дали пътят е файл, или директория.

{% include nav.html %}
