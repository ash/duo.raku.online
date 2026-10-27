---
title: The solution of ’Describe a class‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.^name` returns the name of the class itself, `Dog`.

1. `.^mro` returns the inheritance chain, and `.elems` counts it. The chain has four types: `Dog`, its parent `Animal`, and `Any` and `Mu`, which every class has. So the count is `4`.

1. `.^mro.map(*.^name)` turns this chain into a list of type names, `(Dog Animal Any Mu)`. The `∈` operator checks membership in a set. Here, it checks whether `Cat` is one of them. `Dog` does not inherit from any `Cat`, so the answer is `False`.

{% include nav.html %}
