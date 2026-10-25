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

Ето два възможни случая:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Каква е вашата възраст? 20
Вашата възраст е 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Каква е вашата възраст? -1
Въведохте отрицателно число!
```

За да проверите, че съобщението за грешка отива в `STDERR`, пренасочете изхода. Подканата за възрастта няма да се появи, но все пак можете да въведете число. Предупреждението все още се вижда.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Въведохте отрицателно число!
```

{% include nav.html %}
