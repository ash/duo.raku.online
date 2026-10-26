---
title: Anonymous subroutines
---

{% include menu.html %}

A subroutine does not need a name. A subroutine without a name is _anonymous_. You write it like a normal subroutine, only with no name. Usually, you keep it in a variable. Then you can call it later.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

The variable `$double` has the subroutine in it. `$double(5)` calls the subroutine with the argument `5`.

## Pointy blocks

Raku has a shorter way to write the same thing. It is the _pointy block_. It has an arrow, `->`, before the parameters. You do not need the word `sub`. You do not need parentheses around the parameters either:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

This is how people usually write a small anonymous subroutine.

## The `&` sigil

Maybe you want a name for the call, not a `$` variable. Then create the variable with the `&` sigil. Now you can call it without the sigil. It works just like a normal subroutine:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Giving it to another function

You do not have to keep an anonymous subroutine in a variable. It is just a value. So you can give it directly to a function. Some functions need such a value, for example, `map`, `grep`, or `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Here, the pointy block is the anonymous subroutine. `map` calls it once for each element. In fact, you already do this all the time. You often give a `{ ... }` block or `-> $x { ... }` to `map` and `grep`. Each of them is a small anonymous subroutine. You write it right where you need it. You do not give it a name first.

{% include nav.html %}
