---
title: 'Решение: Повышение зарплаты'
---

{% include menu.html %}

Программа должна изменить одно значение в хэше. Вы присваиваете ему новое значение. Это почти как со скалярной переменной.

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

Запустите программу. Проверьте, что расчёты верны. Ещё проверьте, что вы правильно переводите проценты.

```console
$ raku exercises/associatives/salary-raise.raku
Новая зарплата Eliza Vents: 3150
```

{% include nav.html %}
