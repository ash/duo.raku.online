---
title: Subroutines vs methods
---

{% include menu.html %}

Now you know two ways to put some actions together. One is a _subroutine_. The other is a _method_. They look similar. But you use them in different ways.

A subroutine stands alone. It does not belong to anything. You call it by its name. You pass it everything that it needs as arguments:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

A method belongs to a class. It is like a function inside the class. You call a method on an object, with a dot. An object is a value of the class. The method can use the data of its object. For this, it has `self` and the attribute accessors. So you do not pass this data to it:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Both give the same number. The difference is where the data comes from. The subroutine gets the radius as an argument. The method reads the radius from its object. This is the object that you call it on.

Here is a simple rule. Does the code stand alone and only work with its arguments? Then use a subroutine. Does the code belong to an object and work with its data? Then use a method. Does the code belong to a class, but not to one object? Then use class methods.

{% include nav.html %}
