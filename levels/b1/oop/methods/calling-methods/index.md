---
title: Methods calling methods
---

{% include menu.html %}

A method can use `self` to call another method on the same object:

```raku
class Circle {
    has $.radius;

    method area {
        3.14 * $.radius * $.radius;
    }

    method describe {
        'The area is ' ~ self.area;
    }
}

my $c = Circle.new(radius => 2);
say $c.describe; # The area is 12.56
```

Inside `describe`, the call `self.area` runs the `area` method on the same circle. Its result becomes part of the description.

You call the method as `self.area`, with a dot. Code outside the class does the same with an instance, for example, `$c.describe`. In this way, you can build more complex behaviour from smaller methods. Each of them does one job.

{% include nav.html %}
