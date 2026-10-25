---
title: 'Solution: FizzBuzz в цикъл'
---

{% include menu.html %}

Този път проверката за делимост става в цикъл. Вместо да отпечатва думите директно, програмата първо ги събира в отделна променлива и по-късно я интерполира в низ.

## Код

Ето новото решение:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Намерете програмата във файла [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Изход

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Коментар

За много строг решавач на задачи това решение може да не е перфектно, защото отпечатва интервал след двоеточието дори за числа, които не са получили Fizz или Buzz. Променете програмата, за да избегнете този проблем.

{% include nav.html %}
