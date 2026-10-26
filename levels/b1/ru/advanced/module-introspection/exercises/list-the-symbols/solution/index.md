---
title: 'Решение: Список символов'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

Программа, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Оба файла с исходным кодом можно найти в директории [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Вывод

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Комментарии

1. `Circle::` — это пакет модуля. `.keys` выводит список имён в нём, каждое — со своим сигилом.

1. `.elems` считает эти имена. Модуль объявляет две переменные `our`, поэтому результат равен `2`.

1. `.keys` не обещает никакого определённого порядка. Поэтому мы применяем `.sort`, который каждый раз даёт один и тот же результат по алфавиту: `($pi $tau)`. Без сортировки порядок двух имён мог бы меняться от запуска к запуску.

{% include nav.html %}
