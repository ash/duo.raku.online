---
title: Custom exceptions
---

{% include menu.html %}

Raku has built-in exceptions. Their names start with `X::`. You can also make your own exceptions. We call them custom exceptions. A custom exception is a class. It inherits from the built-in class `Exception`. So it is a kind of `Exception`. It also has a method `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` is a normal class. It can have attributes, like `value`. But it `is Exception`. So you can throw it, like an error from `die`. To throw it, make an object of the class. Then call `.throw` on this object:

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

Inside the `CATCH`, `when TooBig` matches. This is because the thrown object has the type `TooBig`. A custom exception holds any data that you give it. Here, this data is the `value`. The code that handles the exception is the handler. The handler can use this data. It can build an exact message. Or it can react in a special way. This is much more useful than a simple string for `die`.

Here, everything from this part of the course comes together. A custom exception is a _class_. It has attributes and a method. It also works with the exception tools of Raku. You can throw it and catch it. So it can tell exactly what went wrong.

{% include nav.html %}
