---
title: The solution of ’Prefix the message‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `.message` method of the exception object returns the text given to `die`.

1. Joining it to the end of `Error: ` gives the final line. The exception object is just a value. So you can use its message in any way you like.

{% include nav.html %}
