---
title: 'Solution: Друк аргументів командного рядка'
---

{% include menu.html %}

Програма отримує аргументи з командного рядка. Вони лежать у масиві `@*ARGS`. Тож нам потрібен цикл по його елементах.

## Код

```raku
.say for @*ARGS;
```

🦋 Знайдіть програму у файлі [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Вивід

Запустіть програму. Перевірте, що вона виводить аргументи, по одному в кожному рядку:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
