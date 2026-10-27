---
title: Exception objects
---

{% include menu.html %}

An exception describes an error in the program. In Raku, it is an object, like every other object. You write `die 'something failed'`. Then Raku puts your message into an exception object. The type of this object is `X::AdHoc`.

A `CATCH` block catches the exception. Inside it, you can look at this object. `.^name` gives its type. `.message` gives its text:

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

The type is useful. With it, you can treat each error in its own way. Each built-in exception in Raku has its own type. The names of these types start with `X::`. You can match these types with `when`. You did the same with values in a `given`/`when` block:

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

This prints `an ad-hoc error: something failed`. This happens because the exception matches the type `X::AdHoc`. To handle a certain kind of error, you match its type. This is the basic idea. The section about [custom exceptions](/oop/custom-exceptions) builds on it.

{% include nav.html %}
