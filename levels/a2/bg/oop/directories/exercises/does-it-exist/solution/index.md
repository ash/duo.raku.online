---
title: 'Решение: Съществува ли?'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Намерете програмата във файла [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Изход

```
False
True
```

## Коментари

1. `.e` проверява дали пътят съществува. Първата проверка идва, преди да създадем файла. Затова тя връща `False`.

1. След това `spurt` създава `test.txt`. Втората проверка е върху *същия* път. Сега тя връща `True`. Можете да питате обекта-път отново. Отговорът му показва файловата система такава, каквато е сега.

{% include nav.html %}
