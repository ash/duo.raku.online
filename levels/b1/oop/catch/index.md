---
title: The `CATCH` phaser
---

{% include menu.html %}

The `try` block is handy, but it treats the whole block as one unit. The block either works, or it does not. The `CATCH` phaser gives you more control. It lets you handle an exception _inside_ the block where it happened. Then you decide what to do.

`CATCH` is a phaser, like the ones you saw in the [section about control flow](/advanced/phasers). You can put it anywhere inside a block. It runs only if an exception is thrown in that block. You get the exception as the topic variable `$_`:

```raku
{
    die 'Boom!';

    CATCH {
        default {
            say 'Caught: ' ~ .message;
        }
    }
}

say 'after';
```

The program prints:

```
Caught: Boom!
after
```

The `default` block inside `CATCH` handles any exception. After it has run, the exception counts as handled. So the program does not stop. It continues after the block around the `CATCH`, which is why `after` is printed.

Without the `CATCH`, the `die` would end the program before it got to `after`.

{% include nav.html %}
