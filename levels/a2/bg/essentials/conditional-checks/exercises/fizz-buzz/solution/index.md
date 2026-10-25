---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Това е класическа задача на интервюта за работа. Тя проверява едно нещо. Мислите ли за случая, когато и двете условия са `True`? Понякога едно число се дели и на 3, и на 5 без остатък. Тогава програмата трябва да отпечата `FizzBuzz`.

## Код

Ето решението:

```raku
my $n = prompt 'Въведете число: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Намерете програмата във файла [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Пример

Тествайте програмата с няколко групи числа:

* Числа, които се делят на 3, например: 3, 6, 9, 12.
* Числа, които се делят на 5, например: 5, 10, 15, 20.
* Числа, които се делят и на 3, и на 5, например: 15, 30, 45.
* Числа, които не се делят нито на 3, нито на 5, например: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Въведете число: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Въведете число: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Въведете число: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Въведете число: 30
FizzBuzz
```

{% include nav.html %}
