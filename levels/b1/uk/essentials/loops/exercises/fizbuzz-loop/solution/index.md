---
title: 'Solution: FizzBuzz у циклі'
---

{% include menu.html %}

Цього разу перевірка на подільність відбувається в циклі. Замість того щоб одразу виводити слова, програма спочатку збирає їх в окремій змінній, а потім інтерполює цю змінну в рядок.

## Код

Ось нове рішення:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Знайдіть програму у файлі [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Вивід

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Коментар

Дуже прискіпливий розв'язувач задач може вважати це рішення неідеальним, бо воно виводить пробіл після двокрапки навіть для тих чисел, які не отримали ні Fizz, ні Buzz. Змініть програму, щоб уникнути цієї проблеми.

{% include nav.html %}
