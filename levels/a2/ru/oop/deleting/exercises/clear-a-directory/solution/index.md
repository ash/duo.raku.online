---
title: 'Решение: Очистите каталог'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Исходный код можно найти в файле [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Вывод

```
False
```

## Комментарии

1. `rmdir` удаляет только пустой каталог. Поэтому программа сначала удаляет файлы. `'cache'.IO.dir` даёт список записей. `.unlink for …` удаляет каждую из них.

1. Теперь каталог пуст, и `rmdir` его удаляет. Последняя проверка `.e` даёт `False`. Значит, каталога `cache` правда больше нет.

{% include nav.html %}
