---
title: The solution of ’Find a method‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 You can find the source code in the file [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Output

```
True
```

## Comments

1. `.^find_method` returns the method if it is there. If not, it returns an undefined value. `so` turns this into a simple Boolean, `True` or `False`.

1. `Dog` has no methods of its own. But the result is `True`. `find_method` looks through the whole inheritance chain. It finds `speak` higher up, in `Animal`. A real method call on a `Dog` works in the same way. It finds the inherited method like this too.

{% include nav.html %}
