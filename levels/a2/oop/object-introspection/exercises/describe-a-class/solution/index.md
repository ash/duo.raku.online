---
title: The solution of ’Describe a class‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 You can find the source code in the file [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Output

```
Dog
4
False
```

## Comments

1. `.^name` returns the name of the class, `Dog`.

1. `.^mro` returns the inheritance chain. `.elems` counts the types in it. There are four types in the chain. They are `Dog`, its parent `Animal`, and then `Any` and `Mu`. Every class has `Any` and `Mu` in its chain. So the count is `4`.

1. `.^mro.map(*.^name)` turns the chain into a list of type names: `(Dog Animal Any Mu)`. The operator `∈` checks if an element is in a set. Here, it checks if `Cat` is one of these names. `Dog` does not inherit from any `Cat`. So the answer is `False`.

{% include nav.html %}
