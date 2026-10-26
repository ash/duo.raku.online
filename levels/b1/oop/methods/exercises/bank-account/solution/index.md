---
title: The solution of ’A walking robot‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `position` attribute has `is rw`, so the method can change it. Its default is `0`, so a new robot starts at the origin.

1. The `move` method gives its parameter a default value, `$steps = 1`. So the call `$r.move` without an argument moves one step. But `$r.move(5)` and `$r.move(2)` move by the given number of steps. The three calls add up to `5 + 1 + 2`, so the final position is `8`.

{% include nav.html %}
