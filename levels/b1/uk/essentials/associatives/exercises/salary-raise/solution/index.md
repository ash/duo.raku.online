---
title: 'Розв''язання: Підвищення зарплати'
---

{% include menu.html %}

Програмі потрібно змінити одне зі значень у хеші. Нове значення присвоюється майже так само, як і для скалярної змінної.

## Код

Ось рішення:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # in percents

%employee<salary> *= (1 + $raise / 100);
say "New salary of %employee<full-name>: %employee<salary>";
```

🦋 Знайдіть програму у файлі [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Вивід

Коли ви запускаєте програму, перевірте, що ваші обчислення правильні. Також перевірте, що ви правильно перетворили відсотки.

```console
$ raku exercises/associatives/salary-raise.raku
New salary of Eliza Vents: 3150
```

{% include nav.html %}
