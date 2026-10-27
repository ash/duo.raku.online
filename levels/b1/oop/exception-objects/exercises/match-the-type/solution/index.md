---
title: The solution of ’Match the type‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 You can find the source code in the file [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Output

```
cannot divide by zero
```

## Comments

1. In Raku, `1 / 0` does not fail at once. Instead, it gives a lazy `Failure`, which waits until it is used. The exception is thrown only when we *use* the value. Here, this happens when we try to `say` it.

1. The thrown exception has the built-in type `X::Numeric::DivideByZero`. The branch `when X::Numeric::DivideByZero` matches exactly that type. Here, you match a specific type instead of catching everything with `default`. This lets you handle different errors in different ways.

{% include nav.html %}
