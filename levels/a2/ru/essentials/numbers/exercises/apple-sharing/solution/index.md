---
title: 'Решение: Распределение яблок'
---

{% include menu.html %}

Вот решение.

## Код

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Each person gets $gets apple(s).";
say "There are $remains apple(s) remaining.";
```

🦋 Вы можете найти исходный код в файле [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Вывод

Входные числа — 3 и 11. С ними программа выводит вот это:

```console
$ raku exercises/numbers/apple-sharing.raku
Each person gets 3 apple(s).
There are 2 apple(s) remaining.
```

Измените начальные значения `$N` и `$K`. Попробуйте другие случаи:

* `$K` делится на `$N` без остатка, например, `12` и `3`;
* `$K` равно `$N`;
* `$K` меньше `$N`.

## Комментарии

Программа использует два оператора. Оператор `div` делает целочисленное деление. Оператор `%` даёт остаток от деления. Вы также можете сделать вычисления вот так:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Посмотрите также на строку. Raku интерполирует в ней переменные. Это значит, что он вставляет их значения в строку.

{% assign human=1 %}
{% include nav.html %}
