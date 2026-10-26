---
title: The solution of ’Item or list‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `my $x = $(@a)` sets item context. So the whole array goes into the one scalar `$x`. The array does not split into its elements.

1. Then `@($x)` sets list context. Now `$x` becomes three elements again. So the `for` loop runs three times. At the end, the counter is `3`. The two contextualisers do opposite things. `$( )` packs a list into one item. `@( )` unpacks it again.

{% include nav.html %}
