---
title: Увеличение на заплата
---

{% include menu.html %}

## Проблем

Този хеш съдържа данните на един служител:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Увеличете заплатата с 5&thinsp;%. Отпечатайте новата заплата и името на служителя. След промяната хешът `%employee` трябва да има правилните стойности.

## Пример

Програмата трябва да отпечата това:

```console
$ raku salary-raise.raku
Новата заплата на Eliza Vents: 3150
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
