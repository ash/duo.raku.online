---
title: Using unless
---

{% include menu.html %}

The [`!` operator](/essentials/booleans/operations#negation) easily turns any Boolean condition into its opposite. But sometimes this `!` makes the expression more complex. Then it is harder to read. In such cases, `unless` can help.

The condition of `unless` must be `False`. Then Raku runs the block.

```raku
my $broken = False;

# ...Something can set $broken to True here...
    
unless $broken {
    say "Don’t worry!";
    say "Be happy!";
}
```

Here are two versions of the same program. Compare them:

With `if` and `!`:

```raku
if !$broken { . . . }
```

With `unless`:

```raku
unless $broken { . . . }
```

So you have a choice. In each situation, choose what feels better to you.

You cannot put an `else` or `elsif` block after `unless`. For this, you must use `if`.

{% include nav.html %}
