---
title: Anonymous subroutines
---

{% include menu.html %}

A subroutine does not have to have a name. An _anonymous_ subroutine looks just like a normal one, only without a name. It is usually stored in a variable, so that you can call it later.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

The variable `$double` holds the subroutine. Then `$double(5)` calls it with the argument `5`.

## Pointy blocks

Raku has a shorter way to write the same thing: the _pointy block_. The arrow `->` comes before the parameters. You need neither the word `sub` nor parentheses around them:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Most often, a small anonymous subroutine is written like this.

## The `&` sigil

You may want to call the subroutine by name, not through a `$` variable. In that case, declare the variable with the `&` sigil. Then you can call it without the sigil, just like an ordinary subroutine:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Passing it to another function

You do not have to store an anonymous subroutine in a variable at all. It is just a value. So you can pass it directly to a function that needs one. Examples are `map`, `grep`, or `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Here, the pointy block is the anonymous subroutine. `map` calls it once for each element. In fact, you have been doing this all along. You passed many `{ ... }` blocks and `-> $x { ... }` to `map` and `grep`. Each of them is a small anonymous subroutine. You write it right where you need it, instead of giving it a name first.

{% include nav.html %}
