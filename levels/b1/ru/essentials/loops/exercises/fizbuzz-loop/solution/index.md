---
title: 'Решение: FizzBuzz в цикле'
---

{% include menu.html %}

На этот раз проверка делимости происходит в цикле. Вместо того чтобы сразу печатать слова, программа сначала собирает их в отдельной переменной, а потом вставляет её в строку.

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

Очень строгому решателю задач это решение может показаться неидеальным, потому что оно печатает пробел после двоеточия даже для тех чисел, которые не получили ни Fizz, ни Buzz. Измените программу, чтобы избежать этой проблемы.

{% include nav.html %}
