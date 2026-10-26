---
title: 'Решение: Поиск символа'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

Программа, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Оба файла с исходным кодом можно найти в директории [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Вывод

```console
$ raku -I. lookup.raku
3.14
```

## Комментарии

1. `Circle::` — это stash модуля. Вы используете имя как ключ: `Circle::{'$pi'}`. Так вы получаете значение для этого имени. В ключе должен быть сигил. У имён в списке он тоже есть.

1. Вы получаете то же значение, что и с полным именем `$Circle::pi`. Но здесь имя — обычная строка. Поэтому программа может составить имя во время работы. Не нужно писать его в исходном коде.

{% include nav.html %}
