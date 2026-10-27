---
title: The solution of ’Handle and continue‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 You can find the source code in the file [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Output

```
processed ok
skipped (bad): boom
processed ok
```

## Comments

1. The `CATCH` phaser is inside the block for one item. So it handles a `die` only for this item. The exception is handled there. So it never gets out of the block. It cannot stop the whole loop.

1. This is a common case for `CATCH`, not for `try`. One round of the loop fails. The program handles the error right there. Then the loop goes on to the next item. The middle item fails. But the program still handles the two `ok` items.

{% include nav.html %}
