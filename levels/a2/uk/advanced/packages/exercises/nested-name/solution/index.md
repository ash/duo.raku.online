---
title: 'Розв''язання: Вкладене ім''я'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Вихідний код можна знайти у файлі [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Вивід

```
10
20
```

## Коментарі

1. Тут один простір імен лежить усередині іншого. Так виходить довший шлях із `::`. Змінна й підпрограма лежать на два рівні вглиб, в `Outer::Inner`.

1. Повне ім'я `$Outer::Inner::base` дає змінну. `Outer::Inner::doubled()` дає підпрограму, через ті самі два рівні. Ім'я підпрограми не має сигіла. Тож перед ним немає `$`, а перед змінною `$` стоїть.

1. Перед обома стоїть `our`. Це робить їх видимими за межами їхнього модуля. З `my` вони б лишилися приватними для `Inner`.

{% include nav.html %}
