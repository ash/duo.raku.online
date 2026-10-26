---
title: The solution of ’Clean up on leave‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 You can find the source code in the file [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Output

```
Working
Cleanup
```

## Comments

1. First, the program prints `Working`. Then `return` leaves the subroutine at once. So the program never prints `never reached`.

1. The body ends early. But the `LEAVE` phaser still runs on the way out. It prints `Cleanup`. You can always be sure of this. That is why `LEAVE` is the right place to free resources. It always runs, however the block ends.

{% include nav.html %}
