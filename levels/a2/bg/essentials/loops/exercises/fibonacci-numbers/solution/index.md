---
title: 'Solution: Числа на Фибоначи'
---

{% include menu.html %}

Ето как да получите числата на Фибоначи.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Код

Кодът прави точно това, което казва алгоритъмът. Той има две променливи за двете текущи числа на Фибоначи. Цикълът ги променя всеки път. Двете променливи получават нови стойности [в едно присвояване](/bg/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Намерете програмата във файла [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Изход

Ето изходът. Той показва първите 20 числа.

```console
$ raku exercises/loops/fibonacci-numbers.raku
0
1
1
2
3
5
8
13
21
34
55
89
144
233
377
610
987
1597
2584
4181
```

## Още за това

Запомнете тази задача. По-късно се връщаме към нея. Тогава използваме _последователности_ в Raku. Това е нов и интересен начин да я решим.

{% include nav.html %}
