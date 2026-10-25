---
title: 'Solution: Увеличение на заплата'
---

{% include menu.html %}

Програмата трябва да промени една стойност в хеша. Присвоявате ѝ нова стойност. Това е почти същото като при скаларна променлива.

## Код

Ето решението:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # в проценти

%employee<salary> *= (1 + $raise / 100);
say "New salary of %employee<full-name>: %employee<salary>";
```

🦋 Намерете програмата във файла [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Изход

Стартирайте програмата. Проверете дали изчисленията са верни. Проверете също дали превръщате процентите правилно.

```console
$ raku exercises/associatives/salary-raise.raku
New salary of Eliza Vents: 3150
```

{% include nav.html %}
