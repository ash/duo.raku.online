---
title: The inheritance chain
---

{% include menu.html %}

If a class inherits from another, you can ask for its whole chain of types. The `.^mro` meta-method returns this chain. The name stands for _method resolution order_. This is the order in which Raku looks for a method.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Read the list from the left. A `Dog` is first itself, then an `Animal` (its parent), and then `Any` and `Mu`. These two types are at the very top, and every Raku object inherits from them. For a method call on a `Dog`, Raku searches this list from left to right. It uses the first matching method that it finds. That is exactly why a child’s method overrides the parent’s method. The child comes earlier in the chain.

If a class has no parent that you name yourself, the chain is shorter. It has just the class itself, followed by `Any` and `Mu`.

{% include nav.html %}
