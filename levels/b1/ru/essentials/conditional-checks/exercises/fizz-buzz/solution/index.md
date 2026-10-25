---
title: 'Решение: FizzBuzz'
---

{% include menu.html %}

Это классическая задача для собеседований. Она показывает, помните ли вы о случае, когда оба условия равны `True`. Когда число делится и на 3, и на 5, программа должна вывести `FizzBuzz`.

## Код

Вот решение задачи:

```raku
my $n = prompt 'Enter a number: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Вы можете найти исходный код в файле [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku ).

## Пример

Проверьте программу на нескольких разных видах входных данных:

* Числа, кратные трём, например: 3, 6, 9, 12.
* Числа, кратные пяти, например: 5, 10, 15, 20.
* Числа, кратные и трём, и пяти, например: 15, 30, 45.
* Другие числа, которые не делятся ни на 3, ни на 5, например: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Enter a number: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 30
FizzBuzz
```

{% assign human=1 %}
{% include nav.html %}
