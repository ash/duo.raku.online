---
title: Block-related phasers
---

{% include menu.html %}

You already know the phasers for the whole program. Raku also has phasers for one block or one loop. They belong to the life of that block or loop.

## Going into a block and out of it

The `ENTER` phaser runs each time the program goes into a block. The `LEAVE` phaser runs each time the program leaves the block. Their place in the block does not matter:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Look at the output. `ENTER` runs first, and `LEAVE` runs last. The body of the block is between them:

```
before block
entering
inside
leaving
after block
```

`LEAVE` is very useful. It runs even when the block ends early. So you can safely free a resource there, like an open file.

A phaser can have a whole `{ }` block, not only one statement. You can also have several phasers. A block can have more than one `LEAVE`. Then they run in reverse order. The last one runs first. It works like a stack. The last thing in goes out first:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

The program opens resource `A` first. It closes it last:

```
open A
open B
work
close B
close A
done
```

This order is “last in, first out”. It is exactly right for cleanup. The last thing you set up is the first thing you remove. The `END` phaser for the whole program works in the same way. Several `END` blocks also run in reverse order.

## Phasers for loops

Loops have three more phasers. They mark the steps of the loop. `FIRST` runs once, before the first round. `LAST` runs once, after the last round. `NEXT` runs at the end of each round:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

The loop prints:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

It is the same as with other phasers. You can write `FIRST`, `NEXT`, and `LAST` anywhere in the loop. Each one runs at its own time.

{% include nav.html %}
