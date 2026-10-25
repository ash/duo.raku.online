---
title: 'Решение: Выведите предупреждение'
---

{% include menu.html %}

## Код

Вот решение:

```raku
my $age = prompt 'What is your age? ';

if $age < 0 {
    note 'You entered a negative number!';
}
else {
    say "Your age is $age";
}
```

🦋 Найдите программу в файле [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Вывод

Вот два примера:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
What is your age? 20
Your age is 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
What is your age? -1
You entered a negative number!
```

Сообщение правда попадает в `STDERR`? Чтобы проверить это, перенаправьте вывод. Тогда вы не видите вопрос о возрасте. Но вы всё равно можете ввести число. И вы всё ещё видите предупреждение.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
You entered a negative number!
```

{% include nav.html %}
