---
title: 'Решение: Създайте директория'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `mkdir` създава директорията. `.IO.d` показва, че `reports` е директория.

1. Сега директорията съществува. Затова можем да запишем файл в нея. За това даваме път с името на директорията в него: `reports/data.txt`. След това проверяваме този път с `.e`. Проверката показва, че файлът е в новата директория.

1. Редът е важен. `spurt` **не** създава липсващи директории вместо вас. Опитайте да запишете в `reports/data.txt`, преди директорията `reports` да съществува. Ще получите грешка от рода на `Failed to open file … : No such file or directory`. Затова първо създайте директорията, както прави `mkdir` тук. Тогава записът работи. А ето и едно хубаво нещо за `mkdir`. Той създава и липсващите директории в средата на пътя. Например `mkdir 'reports/2026'` създава цялата верига от директории с едно извикване.

{% include nav.html %}
