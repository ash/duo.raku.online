---
title: 'Розв''язання: Whatever із двома аргументами'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Вираз має дві зірочки. Тож Raku створює `WhateverCode` із двома аргументами. Перша зірочка — це перший аргумент. Друга зірочка — це другий аргумент.

1. Виклик `$join('a', 'b')` ставить значення на місце зірочок по порядку. Це дає `'a' ~ '-' ~ 'b'`. Результат — `a-b`.

{% include nav.html %}
