---
title: 'Розв''язання: Дві функції в одному модулі'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу. Він використовує два файли.

## Код

Модуль `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

Програма `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions).

## Вивід

```console
$ raku -I. calc.raku
7
12
```

## Коментарі

1. Модуль може експортувати багато підпрограм, скільки захочете. Кожна з них має свій трейт `is export`.

1. Програмі потрібен лише один `use Calc`. Після нього доступні і `add`, і `mul`.

{% include nav.html %}
