---
title: The solution of ’Name the error‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 You can find the source code in the file [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Output

```
X::AdHoc
sub failed
```

## Comments

1. The `die` happens inside `risky`. But the exception goes up to the caller. The caller is the code that called `risky`. Here, it is the block. The `CATCH` in this block handles the exception. This is how error handling usually works. The code that handles an error is its handler. The error and its handler can be in different routines.

1. A simple `die` with a string makes an `X::AdHoc` exception. `.^name` shows this type. `.message` returns the text that we gave to `die`.

{% include nav.html %}
