---
title: 'Решение: Файл или директория?'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `.f` проверява дали пътят е обикновен файл, така че връща `True` за `a.txt`.

1. `.d` проверява за директория. За същия този път той връща `False`. Това е така, защото `a.txt` е файл, а не директория. Двете проверки се допълват. Така различавате файл от директория.

{% include nav.html %}
