---
title: Variable interpolation in Raku strings
---

{% include menu.html %}

In the last sections, some strings were in single quotes. Other strings were in double quotes. Did you notice this? The difference is very important.

Do you need a single quote inside a string? The easiest way is to use double quotes, of course:

```raku
say "O'Henry";
```

By the way, a real apostrophe is still better than a single quote. The reason is that [Raku is good at Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

But the real power of double quotes is something else. They can _interpolate_ variables. Soon, we will see that they can also run code! Look at this program:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

As you can guess, the program prints `Hello, Karl!`. Raku takes away the name `$name`, with the sigil `$`. It puts the value of the variable in its place.

Raku uses the value of the variable at the moment of interpolation. You can change the value of `$name`. Then you interpolate it again. Now the string gets the new value. Let's test it:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

This time, the same string makes different messages:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
