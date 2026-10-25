---
title: 'Solution: Колко числа са равни?'
---

{% include menu.html %}

Програмата прави няколко сравнения. Потребителят въвежда три числа. Затова има три възможни случая:

1. И трите числа са равни,
1. Само две числа са равни, и
1. Всички числа са различни.

## Код

Ето решението. То записва всяко сравнение изцяло.

```raku
my $n1 = prompt 'Въведете число 1: ';
my $n2 = prompt 'Въведете число 2: ';
my $n3 = prompt 'Въведете число 3: ';

if $n1 == $n2 == $n3 {
    say 3;
}
elsif $n1 == $n2 || $n2 == $n3 || $n1 == $n3 {
    say 2;
}
else {
    say 0;
}
```

🦋 Намерете програмата във файла [how-many-equal-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/how-many-equal-numbers.raku).

## Изход

```console
$ raku exercises/conditional-checks/how-many-equal-numbers.raku 0 0 0
Въведете число 1: 14
Въведете число 2: 8
Въведете число 3: 8
2

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Въведете число 1: 15
Въведете число 2: 15
Въведете число 3: 15
3

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Въведете число 1: 4
Въведете число 2: 6
Въведете число 3: 8
0
```

## Коментари

1. Можете да сравните три числа в един израз: `$n1 == $n2 == $n3`.
1. По-късно ще научите за оператора за редукция. Тогава се върнете и решете тази задача отново.

{% include nav.html %}
