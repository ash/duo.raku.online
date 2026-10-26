---
title: Block-related phasers
---

{% include menu.html %}

Raku has phasers for the whole program, but it also has other ones. These phasers are linked to the life of a single block or loop.

## Entering and leaving a block

The `ENTER` phaser runs each time the program enters a block. The `LEAVE` phaser runs each time it leaves the block. It does not matter on which line you write them:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

The output shows that `ENTER` runs first and `LEAVE` runs last. The body of the block runs between them:

```
before block
entering
inside
leaving
after block
```

`LEAVE` is especially useful because it runs even if the block ends early. This makes it a reliable place to free a resource.

A phaser can take a full `{ }` block instead of one statement. You can also have several of them. When a block has more than one `LEAVE`, they run in reverse order. The last one that was set up runs first. So the block works like a stack, from the top down:

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

The program opens resource `A` first and closes it last:

```
open A
open B
work
close B
close A
done
```

This “last in, first out” order is exactly what you need for cleanup. The thing that you set up last is removed first. The `END` phaser of the whole program works in the same way. Several `END` blocks also run in the reverse order of how they were written.

## Loop phasers

Inside loops, there are three more phasers for the stages of the loop. `FIRST` runs once before the first pass, and `LAST` runs once after the last one. `NEXT` runs at the end of each pass:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

This is the output of the loop:

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

Like other phasers, `FIRST`, `NEXT` and `LAST` can be anywhere in the code. Each of them runs at its own moment.

{% include nav.html %}
