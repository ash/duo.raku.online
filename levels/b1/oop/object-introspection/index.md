---
title: Introspecting objects
---

{% include menu.html %}

In the [section about containers](/advanced/containers), you used `.^name` to ask a value for its type. With the same `.^` meta-calls, you can look inside a class and its objects. You can see their names, their attributes and their place in a class hierarchy.

The `.^name` meta-method returns the name of the class:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

The `.^attributes` meta-method lists the attributes of the class. You see each one with its type and its internal private name. This is the `$!` form that you met with [private attributes](/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspection is useful for tools that work with any kind of object. For example, such a tool can print every attribute of an object. It does not need to know the class first. The next topic shows how to see the inheritance chain of a class.

{% include nav.html %}
