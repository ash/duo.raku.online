---
title: 'Решение: Изтрийте файл'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Намерете програмата във файла [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Изход

```
True
False
```

## Коментари

1. `spurt` създава файла. Затова първата проверка `.e` дава `True`.

1. `unlink` изтрива файла. Тогава втората проверка `.e` дава `False`. Файлът вече го няма. Забележете, че използваме `.e`, а не `.f`. `.f` проверява типа на пътя. Той хвърля грешка, ако пътят вече не съществува. А `.e` просто отговаря `False`.

{% include nav.html %}
