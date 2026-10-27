---
title: The solution of ’Employees and roles‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Employee {
    has $.name;
    method role {
        'staff';
    }
    method badge {
        "$.name - " ~ self.role;
    }
}

class Manager is Employee {
    method role { 'manager' }
}

class Intern is Employee {
    method role { 'intern' }
}

say Manager.new(name => 'Anna').badge;
say Intern.new(name => 'Bob').badge;
```

🦋 You can find the source code in the file [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Output

```
Anna - manager
Bob - intern
```

## Comments

1. `Manager` and `Intern` inherit the attribute `name` from `Employee`. They also inherit the method `badge`. So they do not have to repeat this code.

1. Each child class overrides `role`. The method `badge` calls `self.role`. So it uses the `role` of the object itself. This is the new version from the child class. So the manager and the intern get different badges.

1. Here, `role` is just the name of a method. But Raku also has a keyword `role`. You will learn about it later.

{% include nav.html %}
