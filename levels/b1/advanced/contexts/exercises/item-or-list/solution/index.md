---
title: The solution of ’Item or list‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 You can find the source code in the file [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Output

```
3
```

## Comments

1. `my $x = $(@a)` sets item context. So the whole array is packed into the single scalar `$x`. It is not spread out.

1. Then `@($x)` sets list context and spreads `$x` back into its three elements. So the `for` loop runs three times, and the counter ends at `3`. The two contextualisers are exact opposites: `$( )` packs a list into one item, and `@( )` unpacks it again.

{% include nav.html %}
