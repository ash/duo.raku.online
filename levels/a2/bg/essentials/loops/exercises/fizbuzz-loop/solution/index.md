---
title: 'Solution: FizzBuzz в цикъл'
---

{% include menu.html %}

Този път програмата проверява делимостта в цикъл. Тя не отпечатва думите веднага. Първо ги събира в отделна променлива. После поставя тази променлива в низ.

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

Много внимателният програмист може да не хареса това решение. То отпечатва интервал след двоеточието, дори за числа без Fizz или Buzz. Променете програмата, за да поправите този проблем.

{% include nav.html %}
