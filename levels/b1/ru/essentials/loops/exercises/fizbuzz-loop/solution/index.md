---
title: 'Решение: FizzBuzz в цикле'
---

{% include menu.html %}

На этот раз программа проверяет делимость внутри цикла. Она не печатает слова сразу. Вместо этого она сначала собирает их в отдельной переменной. Позже она вставляет эту переменную в строку.

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

Очень внимательному программисту это решение может не понравиться. Оно всегда печатает пробел после двоеточия, даже если нет ни Fizz, ни Buzz. Измените программу, чтобы это исправить.

{% include nav.html %}
