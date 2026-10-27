---
title: The `CATCH` phaser
---

{% include menu.html %}

The `try` block is easy to use. But for `try`, the whole block is one piece. The block either works, or it fails. The `CATCH` phaser gives you more control. An exception is an error that stops the program. With `CATCH`, you handle the exception _inside_ its block. This is the block with the error. There, you decide what to do.

`CATCH` is a phaser. A phaser is a special block. Raku runs it by itself at a certain moment. You met phasers in the [section about control flow](/advanced/phasers). You can put `CATCH` anywhere inside a block. It runs only if code in this block throws an exception. You get the exception in the topic variable `$_`:

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

The `default` block inside `CATCH` handles every exception. After it runs, the exception counts as handled. So the program does not stop. It goes on after the block with the `CATCH`. This is why the program prints `after`.

Without the `CATCH`, the `die` stops the program. The program never gets to `after`.

{% include nav.html %}
