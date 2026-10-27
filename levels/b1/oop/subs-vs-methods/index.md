---
title: Subroutines vs methods
---

{% include menu.html %}

You now have two ways to organise some behaviour: a _subroutine_ and a _method_. They look similar, but you use them in different ways.

A subroutine stands on its own. You call it by its name, and you pass it everything it needs as arguments:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

A method belongs to a class. You call it on an object with a dot. It can use the object’s own data through `self` and the attribute accessors. So you do not need to pass that data in:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Both calculate the same number. The difference is where the data comes from. The subroutine gets the radius as an argument. The method reads it from the object that it was called on.

Here is a simple rule. Use a subroutine for a separate operation that just turns its arguments into a result. Use a method when the behaviour belongs to an object and uses its data. For general routines that belong to the class as a whole, use class methods.

{% include nav.html %}
