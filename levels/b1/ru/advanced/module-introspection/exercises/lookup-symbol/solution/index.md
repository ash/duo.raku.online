---
title: 'Решение: Поиск символа'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `Circle::` — это stash модуля. Если использовать имя как ключ, например `Circle::{'$pi'}`, вы получите значение, которое хранится под этим именем. Ключ должен включать сигил, так же как имена в списке.

1. Это даёт то же значение, что и полное имя `$Circle::pi`. Но здесь имя — обычная строка. Поэтому его можно составить во время выполнения. Его не нужно выписывать в исходном коде.

{% include nav.html %}
