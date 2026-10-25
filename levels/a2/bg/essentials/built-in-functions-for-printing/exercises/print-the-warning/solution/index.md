---
title: 'Solution: Принтирайте предупреждението'
---

{% include menu.html %}

## Код

Ето решението:

```raku
my $age = prompt 'Каква е вашата възраст? ';

if $age < 0 {
    note 'Въведохте отрицателно число!';
}
else {
    say "Вашата възраст е $age";
}
```

🦋 Намерете програмата във файла [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Резултат

Ето два примера:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Каква е вашата възраст? 20
Вашата възраст е 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Каква е вашата възраст? -1
Въведохте отрицателно число!
```

Наистина ли съобщението отива в `STDERR`? За да проверите това, пренасочете изхода. Тогава не виждате въпроса за вашата възраст. Но все пак можете да въведете число. И все още виждате предупреждението.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Въведохте отрицателно число!
```

{% include nav.html %}
