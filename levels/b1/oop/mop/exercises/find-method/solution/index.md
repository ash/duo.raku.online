---
title: The solution of ’Find a method‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.^find_method` returns the method if it exists. If it does not, it returns an undefined value. Then `so` turns that into a plain Boolean.

1. `Dog` defines no methods itself, but the result is still `True`. `find_method` searches the whole inheritance chain and finds `speak` higher up, in `Animal`. This is also how a real method call on a `Dog` finds the inherited method.

{% include nav.html %}
