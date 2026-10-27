---
title: Exception objects
---

{% include menu.html %}

An exception is an object, just like any other object in Raku. When you write `die 'something failed'`, Raku puts your message inside an exception object. This object has the type `X::AdHoc`.

Inside a `CATCH`, you can examine this object. You get its type with `.^name` and its text with `.message`:

```raku
{
    die 'something failed';

    CATCH {
        default {
            say .^name;   # X::AdHoc
            say .message; # something failed
        }
    }
}
```

When you know the type, you can treat different errors in different ways. Built-in exceptions in Raku have their own types, and their names start with `X::`. You can match on these types with `when`. This works just like matching values in a `given`/`when` block:

```raku
{
    die 'something failed';

    CATCH {
        when X::AdHoc {
            say 'an ad-hoc error: ' ~ .message;
        }
        default {
            say 'some other error';
        }
    }
}
```

This prints `an ad-hoc error: something failed`. That is because the exception matched the type `X::AdHoc`. Matching on the type is the basic way to handle specific errors. The section on [custom exceptions](/oop/custom-exceptions) builds on this idea.

{% include nav.html %}
