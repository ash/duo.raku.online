---
title: 'Решение: FizzBuzz'
---

{% include menu.html %}

Это классическая задача на собеседованиях. Она проверяет одну вещь. Вы думаете о случае, когда оба условия равны `True`? Иногда число делится и на 3, и на 5 без остатка. Тогда программа должна вывести `FizzBuzz`.

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

Проверьте программу на нескольких группах чисел:

* Числа, которые делятся на 3, например: 3, 6, 9, 12.
* Числа, которые делятся на 5, например: 5, 10, 15, 20.
* Числа, которые делятся и на 3, и на 5, например: 15, 30, 45.
* Числа, которые не делятся ни на 3, ни на 5, например: 4, 7, 11.

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
