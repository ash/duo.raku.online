---
title: 'Solution: Надрукувати попередження'
---

{% include menu.html %}

## Код

Ось рішення:

```raku
my $age = prompt 'What is your age? ';

if $age < 0 {
    note 'You entered a negative number!';
}
else {
    say "Your age is $age";
}
```

🦋 Знайдіть програму у файлі [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Вивід

Ось два приклади:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
What is your age? 20
Your age is 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
What is your age? -1
You entered a negative number!
```

Чи справді повідомлення йде в `STDERR`? Щоб це перевірити, перенаправте вивід. Тоді ви не бачите запитання про вік. Але ви все одно можете ввести число. І ви все одно бачите попередження.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
You entered a negative number!
```

{% include nav.html %}
