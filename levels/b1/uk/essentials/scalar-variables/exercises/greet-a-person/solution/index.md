---
title: 'Solution: Привітати людину'
---

{% include menu.html %}

Ось одне можливе рішення задачі.

## Код

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Ви можете знайти вихідний код у файлі [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Вивід

Запустіть програму і введіть ім'я, коли побачите запит:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Коментарі

1. Після запиту користувач вводить рядок. Програма зберігає цей рядок у скалярній змінній `$name`. Ви використовуєте змінну в списку, який передаєте процедурі `say`. Тому ім'я з'являється в повідомленні.

1. Кращий спосіб вирішити цю проблему — використати інтерполяцію рядків. Ми скоро до неї повернемося.

{% include nav.html %}
