---
title: 'Solution: Привітати людину'
---

{% include menu.html %}

Ось один спосіб вирішити задачу.

## Код

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Ви можете знайти вихідний код у файлі [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Вивід

Запустіть програму. Вона запитує ваше ім'я. Введіть ім'я:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Коментарі

1. Програма запитує ім'я. Користувач вводить рядок. Скалярна змінна `$name` зберігає цей рядок. Потім програма передає процедурі `say` список значень. Змінна є частиною цього списку. Тому ім'я з'являється в повідомленні.

1. Є кращий спосіб вирішити цю проблему. Він використовує інтерполяцію рядків. Ми скоро повернемося до цієї проблеми.

{% include nav.html %}
