---
title: 'Решение: Прочитайте константу'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `need Circle` загружает модуль, но не импортирует никаких имён. Поэтому Raku не распознал бы `$pi` само по себе.

1. Программа обращается к переменной `our` через имя модуля, как `$Circle::pi`.

{% include nav.html %}
