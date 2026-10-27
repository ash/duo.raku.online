---
title: The inheritance chain
---

{% include menu.html %}

One class can inherit from another class. Then you can ask for the whole chain of types. The class is built on these types. The meta-method `.^mro` returns this chain. The name means _method resolution order_. Raku looks for a method in this order.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Read the list from the left. First, a `Dog` is itself. Then it is an `Animal`, its parent. Then it is `Any` and `Mu`. Every Raku object inherits from these two types. They are at the very top. When you call a method on a `Dog`, Raku searches this list. It goes from left to right. It uses the first method that matches. This explains overriding. The child comes earlier in the chain. So its method wins over the method of the parent.

Sometimes a class has no parent with `is`. Then the chain is shorter. It has only the class itself, and then `Any` and `Mu`.

{% include nav.html %}
