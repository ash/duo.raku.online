---
title: 'Решение: Числа Фибоначчи'
---

{% include menu.html %}

Этот алгоритм даёт числа Фибоначчи.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Код

Код точно следует алгоритму. Он хранит два текущих числа Фибоначчи в двух переменных. Цикл обновляет их. Обратите внимание, что обе переменные получают новые значения [в одном присваивании](/ru/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Найдите программу в файле [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Вывод

Вот вывод программы с первыми 20 числами.

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

## Подробнее на эту тему

Запомните эту задачу, потому что позже мы к ней вернёмся. Тогда мы найдём ещё одно интересное решение с помощью _последовательностей_ Raku.

{% include nav.html %}
