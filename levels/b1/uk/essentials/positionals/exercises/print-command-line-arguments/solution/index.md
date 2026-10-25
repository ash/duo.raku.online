---
title: 'Solution: Друк аргументів командного рядка'
---

{% include menu.html %}

Програма отримує аргументи командного рядка в масиві `@*ARGS`. Тому нам потрібно пройтися циклом по елементах цього масиву.

## Код

```raku
.say for @*ARGS;
```

🦋 Знайдіть програму у файлі [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Вивід

Запустіть програму і перевірте, що вона виводить кожен аргумент в окремому рядку:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
