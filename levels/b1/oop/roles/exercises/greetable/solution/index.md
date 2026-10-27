---
title: The solution of ’A sized box‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 You can find the source code in the file [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Output

```
size is 10
True
```

## Comments

1. The role provides the `describe` method, and the class composes it with `does Sized`. The method needs `self.size`, which the `Box` class supplies. So the role and the class fit together and form the complete object.

1. `Box` does the role, so the smartmatch `$b ~~ Sized` is `True`. An object counts as having every role that its class composes. This helps you check what an object can do before you call a role method.

{% include nav.html %}
