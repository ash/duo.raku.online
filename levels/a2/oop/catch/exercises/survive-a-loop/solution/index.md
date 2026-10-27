---
title: The solution of ’Survive a loop‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The `CATCH` phaser handles exceptions from the body of the loop. The `die` in the second round throws one. `CATCH` catches it. So the error does not end the program.

1. `CATCH` handles the exception. Then the loop just goes on with the next value. This is why the program still prints `ok: 3`.

{% include nav.html %}
