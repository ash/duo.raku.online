---
title: The solution of ’Prefix the message‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 You can find the source code in the file [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Output

```
Error: timeout
```

## Comments

1. The exception object has a method `.message`. It gives the text that you passed to `die`.

1. We put `Error: ` before this text. This gives the final line. The exception object is just a value. So you can use its message in any way you like.

{% include nav.html %}
