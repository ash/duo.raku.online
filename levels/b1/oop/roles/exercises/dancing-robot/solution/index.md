---
title: The solution of ’A dancing robot‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 You can find the source code in the file [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Output

```
beep
beep
spinning around
```

## Comments

1. Unlike in the earlier examples, `Dancing` does not replace an existing method. Instead, it brings a completely new `dance` method, which `Robot` knows nothing about.

1. `Robot.new but Dancing` mixes the role into a single object at run time. So `$dancing` can both `speak` (from the class) and `dance` (from the role). The plain `$plain` only ever learnt `speak`.

1. The extra ability belongs to that one object, not to the `Robot` class. A call to `$plain.dance` would be an error, because `$plain` never got the role.

{% include nav.html %}
