---
title: Custom exceptions
---

{% include menu.html %}

Raku has built-in `X::` exceptions, but you can also create your own. A custom exception is a class that inherits from the built-in `Exception` class. It also has a `message` method:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` is a normal class, so it can have attributes such as `value`. But because it `is Exception`, you can throw it. To throw it, you create an object and call `.throw` on it:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

The program prints:

```
Value 600 is too big
```

Inside the `CATCH`, `when TooBig` matches because the thrown object has that type. A custom exception carries any data that you give it, here the `value`. So the handler can build an exact message or react in a special way. That is much more useful than a plain string given to `die`.

This page brings together everything from this part. A custom exception is a _class_ with attributes and a method. It also takes part in the exception system of Raku. So it is ready to report exactly what went wrong.

{% include nav.html %}
