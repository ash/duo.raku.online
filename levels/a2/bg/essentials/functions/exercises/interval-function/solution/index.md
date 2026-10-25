---
title: 'Solution: Функция за интервал'
---

{% include menu.html %}

Функцията има `if` с три клона. Първите два клона имат тест. Тестът е `True` или `False`. Третият клон няма нужда от тест. Едно число може да не мине първите два теста. Тогава остава само третият клон.

## Код

Ето решението:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Намерете програмата във файла [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Резултат

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
