---
title: The solution of ’Handle and continue‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `CATCH` phaser is inside the block that runs for each item. So it handles a `die` for that one item only. The exception is handled there, so it never escapes to stop the whole loop.

1. This is a typical case where `CATCH` is better than `try`. A failure in one round of the loop is handled right where it happens. Then the loop moves on to the next item. The middle item fails, but the two `ok` items are still processed.

{% include nav.html %}
