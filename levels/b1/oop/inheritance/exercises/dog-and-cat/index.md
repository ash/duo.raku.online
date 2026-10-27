---
title: Exercise ’Employees and roles‘
---

{% include menu.html %}

## Problem

Define a base class `Employee` with a `name` attribute and two methods. The method `role` returns `'staff'`. The method `badge` returns the string `<name> - <role>`, using its own `role` method.

Then define two child classes, `Manager` and `Intern`, which inherit from `Employee`. They override `role`: it returns `'manager'` in `Manager` and `'intern'` in `Intern`.

Print the badges of a manager called `Anna` and an intern called `Bob`.

## Example

The program prints:

```
Anna - manager
Bob - intern
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
