---
title: 'Решение: Съществува ли?'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `.e` проверява дали пътят съществува. Първата проверка става, преди да създадем файла, така че връща `False`.

1. След това `spurt` създава `test.txt` и втората проверка върху *същия* път връща `True`. Попитайте обекта-път отново и ще получите текущото състояние на файловата система.

{% include nav.html %}
