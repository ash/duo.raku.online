---
title: Using unless
---

{% include menu.html %}

With the [`!` operator](/essentials/booleans/operations#negation), you can easily turn any Boolean condition into its opposite. But sometimes the extra `!` makes the expression heavier and harder to read. In such cases, `unless` can be your friend.

Raku runs the `unless` block when its condition is `False`.

```raku
my $broken = False;

# ...Something can set $broken to True here...
    
unless $broken {
    say "Don’t worry!";
    say "Be happy!";
}
```

Compare two versions of the same program:

With `if` and negation:

```raku
if !$broken { . . . }
```

With `unless`:

```raku
unless $broken { . . . }
```

You have both options, so you can always choose what feels better in each situation.

Note that you cannot put an `else` or `elsif` block after `unless`. If you need one, the only way is to use `if`.

{% include nav.html %}
