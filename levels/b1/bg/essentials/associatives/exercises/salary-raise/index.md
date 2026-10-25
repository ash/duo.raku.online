---
title: Увеличение на заплата
---

{% include menu.html %}

## Проблем

Ето хеш с данните на служител:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Увеличете заплатата с 5&thinsp;% и я отпечатайте заедно с името на служителя. След увеличението хешът `%employee` трябва пак да съдържа правилните стойности.

## Пример

Ето какво трябва да отпечата програмата:

```console
$ raku salary-raise.raku
Новата заплата на Eliza Vents: 3150
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
