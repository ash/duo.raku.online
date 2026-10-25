---
title: 'Решение: Повышение зарплаты'
---

{% include menu.html %}

Программе нужно изменить одно из значений в хэше. Присвоить новое значение можно почти так же, как скалярной переменной.

## Код

Вот решение:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # в процентах

%employee<salary> *= (1 + $raise / 100);
say "Новая зарплата %employee<full-name>: %employee<salary>";
```

🦋 Найдите программу в файле [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Вывод

Когда вы запустите программу, проверьте, что ваши расчёты верны. Также проверьте, что вы правильно перевели проценты.

```console
$ raku exercises/associatives/salary-raise.raku
Новая зарплата Eliza Vents: 3150
```

{% include nav.html %}
