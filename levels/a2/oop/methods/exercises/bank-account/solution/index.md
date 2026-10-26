---
title: The solution of ’A walking robot‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 You can find the source code in the file [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Output

```
8
```

## Comments

1. The attribute `position` has `is rw`. So the method can change it. Its default is `0`, so a new robot starts at the origin.

1. The method `move` gives its parameter a default value: `$steps = 1`. So `$r.move` with no argument moves the robot one step. `$r.move(5)` and `$r.move(2)` move it by the given number. The three calls add `5 + 1 + 2`. So the last position is `8`.

{% include nav.html %}
