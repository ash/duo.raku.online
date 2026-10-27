---
title: Meta-methods
---

{% include menu.html %}

You call a _meta-method_ with `.^`, not with `.`. A normal `.method` runs a method of the object. A `.^method` is different. It calls a method of the **metaobject** of the object. A metaobject is an object that describes a type. So the call asks about the type. It does not act as the type.

You already know `.^name`. It returns the name of the type:

```raku
say 42.^name; # Int
```

Other meta-methods show how a type is built. `.^attributes` lists its attributes. `.^find_method` tells you if a method exists:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` returns the _method resolution order_. This is a chain of types. Raku looks for a method in each of them, in this order. It is the line of inheritance of a class:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` inherits from `A`. In the end, every type inherits from `Any` and `Mu`. You call a method on a `B`. Then Raku looks for it along exactly this path. These meta-methods turn your types into data. This data shows how the types are built. You can ask about it while the program runs.

{% include nav.html %}
