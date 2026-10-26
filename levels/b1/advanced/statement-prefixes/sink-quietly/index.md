---
title: sink and quietly
---

{% include menu.html %}

Two more prefixes are about running code for its effects, not for its value.

The `sink` prefix runs something in _sink context_, that is, only for its side effects. The result is thrown away. This is useful when you want to force a lazy operation to run:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Here, the `map` runs only for the printing it does. `sink` makes sure that it really runs, and then throws the resulting list away. If nothing forces it, a lazy `map` might not run at all. This can happen when its result is never used.

The `quietly` prefix runs a block with its **warnings turned off**. Code that usually prints a warning to the error stream stays silent:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Adding `1` to an undefined `$value` usually gives a warning about an uninitialized value. Inside `quietly`, this warning is hidden. Use it when you know that some code warns, and you do not want the noise. But use it rarely, because warnings usually point to a real mistake.

{% include nav.html %}
