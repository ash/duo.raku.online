---
title: 'Solution: FizzBuzz в цикъл'
---

{% include menu.html %}

Този път програмата проверява всяко число в цикъл. Тя не отпечатва думите веднага. Първо ги събира в отделна променлива. След това поставя тази променлива в низ.

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

Това решение има един малък проблем. То винаги отпечатва интервал след двоеточието. То прави това дори без Fizz или Buzz. Много внимателен програмист не харесва това. Променете програмата и поправете това.

{% include nav.html %}
