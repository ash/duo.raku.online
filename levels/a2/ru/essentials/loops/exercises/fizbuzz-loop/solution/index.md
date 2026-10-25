---
title: 'Решение: FizzBuzz в цикле'
---

{% include menu.html %}

На этот раз программа проверяет каждое число в цикле. Она не печатает слова сразу. Сначала она собирает их в отдельной переменной. Потом она вставляет эту переменную в строку.

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

У этого решения есть одна маленькая проблема. Оно всегда печатает пробел после двоеточия. Оно делает так даже без Fizz и Buzz. Очень внимательному программисту это не нравится. Измените программу и исправьте это.

{% include nav.html %}
