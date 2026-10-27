---
title: 'Розв''язання: Порахуйте символи'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Вихідний код можна знайти у файлі [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Вивід

```
4
```

## Коментарі

1. `spurt` записує рядок `Raku` у файл.

1. `slurp` читає файл як рядок. `.chars` рахує символи в ньому. Їх чотири.

1. Подивіться у файл. Ви бачите лише ці чотири символи. У кінці немає символу нового рядка.

{% include nav.html %}
