---
title: Повышение зарплаты
---

{% include menu.html %}

## Problem

В этом хэше есть данные одного сотрудника:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Увеличьте зарплату на 5&thinsp;%. Выведите новую зарплату и имя сотрудника. После изменения в хэше `%employee` должны быть правильные значения.

## Example

Программа должна вывести вот это:

```console
$ raku salary-raise.raku
New salary of Eliza Vents: 3150
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
