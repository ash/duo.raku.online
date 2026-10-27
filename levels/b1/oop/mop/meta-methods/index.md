---
title: Meta-methods
---

{% include menu.html %}

A _meta-method_ is called with `.^` instead of `.`. The ordinary `.method` runs a method of the object. But `.^method` calls a method on the object’s **metaobject**. So it asks about the type instead of acting as the type.

You have already seen `.^name`, which returns the name of the type:

```raku
say 42.^name; # Int
```

Other meta-methods look at the structure of a type. `.^attributes` lists its attributes, and `.^find_method` tells you if a method exists:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` returns the _method resolution order_. This is the chain of types that Raku searches, in order, to find a method. It is the inheritance line of a class:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` inherits from `A`, and in the end every type inherits from `Any` and `Mu`. So Raku looks for a method of a `B` along exactly that path. These meta-methods turn the structure of your types into data. You can ask about this data at run time.

{% include nav.html %}
