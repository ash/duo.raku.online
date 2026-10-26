---
title: 'Solution: Анонімний квадрат'
translations_gpt: Розв'язок задачі «Анонімний квадрат»
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Ви можете знайти вихідний код у файлі [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Вивід

```
(1 4 9)
```

## Коментарі

1. `sub ($x) { $x * $x }` не має імені й ніколи не зберігається у змінній. Вона йде прямо в `map` як аргумент.

1. `map` застосовує її до кожного елемента `1, 2, 3` і підносить їх до квадрата, що дає `(1 4 9)`. Передати анонімну підпрограму прямо, як тут, — найчастіша причина її писати.

{% include nav.html %}
