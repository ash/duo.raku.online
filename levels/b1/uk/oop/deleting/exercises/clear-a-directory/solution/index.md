---
title: 'Розв''язання: Очистіть каталог'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `rmdir` видаляє лише порожні каталоги, тож спершу треба видалити файли. `'cache'.IO.dir` перелічує записи, а `.unlink for …` видаляє кожен із них.

1. Тепер, коли каталог порожній, `rmdir` його видаляє. Остання перевірка `.e` дає `False`, і це показує, що `cache` зник.

{% include nav.html %}
