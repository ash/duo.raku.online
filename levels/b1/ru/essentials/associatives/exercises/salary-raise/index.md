---
title: Повышение зарплаты
---

{% include menu.html %}

## Problem

Вот хэш с данными сотрудника:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Повысьте зарплату на 5&thinsp;% и выведите её вместе с именем сотрудника. После повышения в хэше `%employee` должны остаться правильные значения.

## Example

Вот что должна вывести программа:

```console
$ raku salary-raise.raku
New salary of Eliza Vents: 3150
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
