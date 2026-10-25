---
title: 'Solution: Увеличение на заплата'
---

{% include menu.html %}

Програмата трябва да промени една от стойностите в хеша. Присвояването на новата стойност работи почти по същия начин като при скаларна променлива.

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

Когато стартирате програмата, проверете дали изчисленията ви са верни. Проверете също дали сте превърнали процентите правилно.

```console
$ raku exercises/associatives/salary-raise.raku
New salary of Eliza Vents: 3150
```

{% include nav.html %}
