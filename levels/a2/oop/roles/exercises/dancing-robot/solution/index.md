---
title: The solution of ’A dancing robot‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. This is not like the earlier examples. `Dancing` does not replace a method that is already there. It brings a completely new method, `dance`. The class `Robot` knows nothing about this method.

1. `Robot.new but Dancing` mixes the role into one single object. This happens while the program runs. So `$dancing` can do two things. It can `speak`, from the class. It can also `dance`, from the role. The plain `$plain` knows only `speak`.

1. The new ability belongs only to this one object. It does not belong to the class `Robot`. So `$plain.dance` gives an error. `$plain` never got the role.

{% include nav.html %}
