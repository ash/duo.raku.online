---
title: 'Exercise: Salary raise'
---

{% include menu.html %}

## Problem

Here is a hash with the data of an employee:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Raise the salary by 5&thinsp;% and print it together with the employee’s name. After the raise, the `%employee` hash must still contain the correct values.

## Example

This is what the program should print:

```console
$ raku salary-raise.raku
New salary of Eliza Vents: 3150
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
