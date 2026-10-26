---
title: sink and quietly
---

{% include menu.html %}

There are two more prefixes. They run code for what it does. The value of the code is not important.

The `sink` prefix runs code in _sink context_. The code runs only for its side effects. Raku throws away the result. This is useful with a lazy operation. With `sink`, you make it run:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Here, we run the `map` only for its printing. `sink` makes sure that it really runs. Then `sink` throws away the list from the `map`. If nothing forces it, a lazy `map` may not run at all. This can happen when nobody uses its result.

The `quietly` prefix runs a block and **hides its warnings**. Some code usually prints a warning to the error stream. Inside `quietly`, this code is silent:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Usually, Raku shows a warning when you add `1` to an undefined `$value`. The warning is about an “uninitialized value”. Inside `quietly`, this warning is hidden. Sometimes you know that your code gives a warning. You do not want this noise. Then use `quietly`. But do not use it often. A warning usually shows a real mistake.

{% include nav.html %}
