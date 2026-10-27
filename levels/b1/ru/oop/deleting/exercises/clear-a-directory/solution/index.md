---
title: 'Решение: Очистите каталог'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `rmdir` удаляет только пустые каталоги, поэтому сначала нужно удалить файлы. `'cache'.IO.dir` выдаёт список записей, а `.unlink for …` удаляет каждую из них.

1. Теперь, когда каталог пуст, `rmdir` его удаляет. Последняя проверка `.e` даёт `False`, и это показывает, что каталога `cache` больше нет.

{% include nav.html %}
