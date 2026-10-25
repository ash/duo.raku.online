---
title: 'Solution: Надрукувати суму'
---

{% include menu.html %}

Програма має лише одну функцію `MAIN`. Вона приймає два типізовані аргументи. Обидва вони утворюються з аргументів командного рядка.

## Код

Ось рішення:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Знайдіть програму у файлі [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Вивід

Спробуйте різні вхідні числа:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Ви також можете запустити програму без аргументів або з аргументами інших типів. Подивіться, що тоді станеться. Про обробку таких випадків ми поговоримо в другій частині курсу.

{% include nav.html %}
