---
title: Exercise ’Employees and roles‘
---

{% include menu.html %}

## Problem

Make a base class `Employee`. This is the parent class for the other classes. It has an attribute `name` and two methods. The method `role` returns `'staff'`. The method `badge` returns the string `<name> - <role>`. For the role, it calls its own method `role`.

Then make two child classes, `Manager` and `Intern`. They inherit from `Employee`. Each of them overrides `role`. This means that it has its own version of this method. In `Manager`, `role` returns `'manager'`. In `Intern`, it returns `'intern'`.

Print the badge of a manager with the name `Anna`. Then print the badge of an intern with the name `Bob`.

## Example

The program prints:

```
Anna - manager
Bob - intern
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
