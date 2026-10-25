---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Це класичне завдання на співбесідах. Воно перевіряє одну річ. Чи думаєте ви про випадок, коли обидві умови — `True`? Іноді число ділиться і на 3, і на 5 без остачі. Тоді програма має вивести `FizzBuzz`.

## Код

Ось рішення:

```raku
my $n = prompt 'Введіть число: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Знайдіть програму у файлі [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Приклад

Перевірте програму на кількох групах чисел:

* Числа, які діляться на 3, наприклад: 3, 6, 9, 12.
* Числа, які діляться на 5, наприклад: 5, 10, 15, 20.
* Числа, які діляться і на 3, і на 5, наприклад: 15, 30, 45.
* Числа, які не діляться ні на 3, ні на 5, наприклад: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Введіть число: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Введіть число: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Введіть число: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Введіть число: 30
FizzBuzz
```

{% include nav.html %}
