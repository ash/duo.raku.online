---
title: 'Розв''язання: Вкладене ім''я'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Коли ви кладете один простір імен усередину іншого, виходить довший шлях із `::`. І змінна, і підпрограма лежать на два рівні вглиб, в `Outer::Inner`.

1. Повне ім'я `$Outer::Inner::base` дістає змінну. `Outer::Inner::doubled()` дістає підпрограму через ті самі два рівні. Ім'я підпрограми не має сигіла. Тож, на відміну від змінної, перед ним немає `$`.

1. Обидва члени оголошено через `our`. Саме це робить їх видимими за межами їхнього модуля. З `my` вони лишилися б приватними для `Inner`.

{% include nav.html %}
