---
title: 'Solution: FizzBuzz у циклі'
---

{% include menu.html %}

Цього разу програма перевіряє подільність у циклі. Вона не виводить слова одразу. Спочатку вона збирає їх в окремій змінній. Потім вона вставляє цю змінну в рядок.

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

Дуже уважному програмістові це рішення може не сподобатися. Воно виводить пробіл після двокрапки, навіть для чисел без Fizz чи Buzz. Змініть програму, щоб виправити цю проблему.

{% include nav.html %}
