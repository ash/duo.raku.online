---
title: The solution of ’Employees and roles‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `Manager` and `Intern` inherit the `name` attribute and the `badge` method from `Employee`. So neither of them needs to repeat that code.

1. Each child class overrides `role`. Because `badge` calls `self.role`, it uses the new version that belongs to the actual object. So the manager and the intern get different badges.

1. The name of the method, `role`, is just a name. But it is the same as the keyword `role`, which you will meet later.

{% include nav.html %}
