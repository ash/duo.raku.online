---
title: The solution of ’A sized box‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The role gives the method `describe`. The class composes the role with `does Sized`. This means that it takes the role into itself. The method needs `self.size`. The class `Box` gives the `size`. The role and the class fit together. Together they make the complete object.

1. `Box` does the role. So the smartmatch `$b ~~ Sized` is `True`. An object has every role that its class composes. Raku knows this. This is useful. You can check what an object can do. Do this before you call a method of a role.

{% include nav.html %}
