---
title: 'Розв''язання: Очистіть каталог'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Вихідний код можна знайти у файлі [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Вивід

```
False
```

## Коментарі

1. `rmdir` видаляє лише порожній каталог. Тож програма спершу видаляє файли. `'cache'.IO.dir` дає список записів. `.unlink for …` видаляє кожен із них.

1. Тепер каталог порожній, і `rmdir` його видаляє. Остання перевірка `.e` дає `False`. Отже, `cache` справді зник.

{% include nav.html %}
