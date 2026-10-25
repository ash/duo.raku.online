---
title: Variable interpolation in Raku strings
---

{% include menu.html %}

In the previous sections, some strings were in single quotes and some in double quotes. Have you noticed that? This difference is very important.

Of course, double quotes make it easy to put a single quote inside a string:

```raku
say "O'Henry";
```

By the way, a proper apostrophe is still better than a single quote. After all, [Raku is good at Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

But the real power of double quotes is that they can _interpolate_ variables. As we will see soon, they can even run code! Take a look at this program:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

As you probably expect, the program prints `Hello, Karl!`. The value of the variable replaced the name `$name`, together with its sigil `$`.

The interpolated value is the value that the variable has at the moment of interpolation. So if you change `$name` and interpolate it again, the new value is used. Let us test it:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

This time, the same string produces different messages:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
