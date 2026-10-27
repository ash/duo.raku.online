---
title: The solution of ’Survive a loop‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 You can find the source code in the file [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Output

```
ok: 1
caught: bad: 2
ok: 3
```

## Comments

1. The `CATCH` phaser handles an exception that is thrown inside the loop body. So the `die` in the second round is caught and does not end the program.

1. Once the exception is handled, the loop simply goes on with the next value. That is why `ok: 3` is still printed.

{% include nav.html %}
