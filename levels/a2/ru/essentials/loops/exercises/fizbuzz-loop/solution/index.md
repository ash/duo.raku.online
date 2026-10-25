---
title: 'Решение: FizzBuzz в цикле'
---

{% include menu.html %}

На этот раз программа проверяет делимость в цикле. Она не печатает слова сразу. Сначала она собирает их в отдельной переменной. Потом она вставляет эту переменную в строку.

## Код

Вот новое решение:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Найдите программу в файле [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Вывод

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Комментарий

Очень внимательному программисту это решение может не понравиться. Оно печатает пробел после двоеточия, даже для чисел без Fizz и Buzz. Измените программу и исправьте эту проблему.

{% include nav.html %}
