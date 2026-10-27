---
title: 'Решение: Изчистете директория'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Намерете програмата във файла [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Изход

```
False
```

## Коментари

1. `rmdir` премахва само празни директории, затова файловете трябва да се изтрият първи. `'cache'.IO.dir` изброява елементите, а `.unlink for …` изтрива всеки от тях.

1. Щом директорията вече е празна, `rmdir` я премахва. Последната проверка `.e` дава `False`, което показва, че `cache` го няма.

{% include nav.html %}
