---
title: 'Решение: Създайте директория'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Намерете програмата във файла [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Изход

```
True
True
```

## Коментари

1. `mkdir` създава директорията, а `.IO.d` показва, че `reports` наистина е директория.

1. Директорията вече съществува, така че можем да запишем файл в нея. За това даваме път, който включва името на директорията: `reports/data.txt`. След това `.e` върху този път показва, че файлът вече е в новата директория.

1. Редът има значение: `spurt` **не** създава липсващи директории вместо вас. Опитайте да запишете в `reports/data.txt`, преди директорията `reports` да съществува. Това завършва с грешка от рода на `Failed to open file … : No such file or directory`. Записът успява само защото `mkdir` първо създава директорията. За щастие `mkdir` създава и всички липсващи директории в средата на пътя. Така при вложен път, като `mkdir 'reports/2026'`, едно извикване изгражда цялата верига.

{% include nav.html %}
