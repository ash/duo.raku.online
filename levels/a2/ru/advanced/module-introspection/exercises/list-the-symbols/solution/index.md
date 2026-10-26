---
title: 'Решение: Список символов'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `Circle::` — это пакет модуля. `.keys` показывает имена в нём. У каждого имени есть сигил.

1. `.elems` считает эти имена. В модуле две переменные `our`. Поэтому результат равен `2`.

1. `.keys` не даёт имена в одном и том же порядке. Поэтому мы используем `.sort`. Он ставит имена по алфавиту. Теперь результат всегда одинаковый: `($pi $tau)`. Без сортировки порядок двух имён может меняться. Он может быть разным при каждом запуске программы.

{% include nav.html %}
