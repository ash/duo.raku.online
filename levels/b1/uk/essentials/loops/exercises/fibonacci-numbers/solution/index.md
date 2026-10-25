---
title: 'Solution: Числа Фібоначчі'
---

{% include menu.html %}

Наступний алгоритм визначає числа Фібоначчі.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Код

Код виконує алгоритм крок за кроком. Він використовує дві змінні, щоб зберігати поточні два числа Фібоначчі, і оновлює їх у циклі. Зверніть увагу, що обидві змінні отримують нові значення [в одному присвоєнні](/uk/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

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

Ось вивід програми, яка друкує перші 20 чисел.

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

## Більше на цю тему

Запам'ятайте це завдання, бо пізніше ми ще повернемося до нього й знайдемо ще одне захопливе рішення з _послідовностями_ Raku.

{% include nav.html %}
