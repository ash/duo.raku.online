---
title: 'Розв''язання: Whatever із двома аргументами'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Вихідний код можна знайти у файлі [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Вивід

```
a-b
```

## Коментарі

1. Вираз містить дві зірочки, тож Raku будує `WhateverCode`, який приймає два аргументи. Перша зірочка — це перший аргумент, а друга — другий.

1. Виклик `$join('a', 'b')` заповнює зірочки по порядку. Це дає `'a' ~ '-' ~ 'b'`, тобто `a-b`.

{% include nav.html %}
