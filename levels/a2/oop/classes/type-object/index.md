---
title: Type objects and instances
---

{% include menu.html %}

You can write a class name, such as `Dog`. This name means the _type object_ of the class. The type object stands for the type itself. It is not one of the objects of this type. An _instance_ is different. You make it with `new`. It is a real object.

Raku sees the difference between them. The method `defined` returns `False` for a type object. It returns `True` for an instance:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

A type object has no real data. It only describes a type. So Raku says that it is _undefined_. An instance is a real object. So it is _defined_.

`WHAT` shows the same type for both. You saw `WHAT` in the [section about containers](/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku shows a type in round brackets, like `(Dog)`. So `Dog` and `Dog.new` have the same type, `Dog`. But they are different things. `Dog` is the type itself. `Dog.new` is an object of this type.

{% include nav.html %}
