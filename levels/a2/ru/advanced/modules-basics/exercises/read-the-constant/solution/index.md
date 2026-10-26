---
title: 'Решение: Прочитайте константу'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

Программа `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Оба исходных файла можно найти в каталоге [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Вывод

```console
$ raku -I. read-pi.raku
3.14
```

## Комментарии

1. `need Circle` загружает модуль. Но он не импортирует никаких имён. Поэтому Raku не знает просто `$pi`, без имени модуля.

1. До переменной `our` вы добираетесь через имя модуля. Вы пишете её как `$Circle::pi`.

{% include nav.html %}
