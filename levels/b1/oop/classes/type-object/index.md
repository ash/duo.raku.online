---
title: Type objects and instances
---

{% include menu.html %}

A class name, such as `Dog`, means the _type object_ of the class. The type object stands for the type itself. It is not any particular object of that type. An _instance_, which you create with `new`, is a real object.

Raku can see the difference between the two. The `defined` method returns `False` for a type object and `True` for an instance:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

A type object counts as _undefined_, because it holds no real data. It only describes a type. An instance is _defined_, because it is a real object.

With `WHAT`, both show the same type. You already met `WHAT` in the [section about containers](/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku shows a type in parentheses, as in `(Dog)`. So `Dog` and `Dog.new` have the same type, `Dog`. But there is a difference. `Dog` is the type itself, and `Dog.new` is an object of that type.

{% include nav.html %}
