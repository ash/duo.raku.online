---
title: Methods calling methods
---

{% include menu.html %}

A method can call another method on the same object. For this, it uses `self`:

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

Look inside `describe`. There, `self.area` runs the method `area` on the same circle. The result goes into the description.

To call a method, you write `self.area`, with a dot. Code outside the object does the same with an instance. For example, it calls `$c.describe`. So you can build bigger behaviour from small methods. Each small method does one job.

{% include nav.html %}
