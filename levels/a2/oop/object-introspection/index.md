---
title: Introspecting objects
---

{% include menu.html %}

In the [section about containers](/advanced/containers), you used `.^name`. With it, you asked a value for its type. The same `.^` meta-calls also work with classes and objects. With them, you can see their names and their attributes. You can also see their place in the tree of classes.

A meta-method is a method that you call with `.^`. The meta-method `.^name` returns the name of the class:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

The meta-method `.^attributes` lists the attributes of the class. For each attribute, you see its type. You also see its inner private name. This is the `$!` form. You saw it with [private attributes](/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspection means that you ask an object about itself. It is useful for tools that work with any kind of object. For example, a tool can print every attribute of an object. It does not need to know the class of the object first. The next topic is about the inheritance chain of a class. This is the line of its parent classes.

{% include nav.html %}
