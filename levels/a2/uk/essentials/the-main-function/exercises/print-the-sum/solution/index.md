---
title: 'Solution: Надрукувати суму'
---

{% include menu.html %}

У програмі є лише одна функція, `MAIN`. Вона приймає два аргументи з типами. Обидва аргументи отримують значення з командного рядка.

## Код

Ось рішення:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Знайдіть програму у файлі [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Вивід

Спробуйте різні числа:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Ви також можете запустити програму без аргументів. Або ви можете взяти аргументи інших типів. Подивіться, що станеться. Друга частина курсу показує, як обробляти такі випадки.

{% include nav.html %}
