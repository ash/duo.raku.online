---
title: The solution of ’Clean up on leave‘
---

{% include menu.html %}

Here is one possible solution.

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

1. After `Working` is printed, `return` leaves the subroutine at once. So `never reached` is never printed.

1. The body was left early. Still, the `LEAVE` phaser runs on the way out and prints `Cleanup`. You can always count on this. That is exactly why `LEAVE` is the right place to free resources. It runs no matter how the block ends.

{% include nav.html %}
