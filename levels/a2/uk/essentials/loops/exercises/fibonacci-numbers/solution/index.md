---
title: 'Solution: Числа Фібоначчі'
---

{% include menu.html %}

Ось як отримати числа Фібоначчі.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Код

Код робить точно те, що каже алгоритм. Він має дві змінні для двох поточних чисел Фібоначчі. Цикл щоразу змінює їх. Обидві змінні отримують нові значення [в одному присвоєнні](/uk/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Знайдіть програму у файлі [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Вивід

Ось вивід. Він показує перші 20 чисел.

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

## Більше про це

Запам'ятайте це завдання. Пізніше ми повернемося до нього. Тоді ми використаємо _послідовності_ Raku. Це новий і дуже цікавий спосіб розв'язати його.

{% include nav.html %}
