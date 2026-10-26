---
title: Item and list context
---

{% include menu.html %}

Two more contexts decide if something is a **list** or a single **item**. A list has several values. The `@` and `$` sigils are based on this difference.

In _list context_, an array spreads out into its elements. A `for` loop puts its argument in list context, so it goes through each element:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

In _item context_, the same array acts as one single value. The `$( … )` contextualiser sets item context. So now the loop sees only one thing and runs once:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

This explains what happens when you assign an array to a scalar. The array is packed into a single item, and its elements are not copied. The reason is that `my $x = @a` puts `@a` in item context. Note that this single item can be another container with many items in it:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

The variable `$var` is a scalar container, so it now holds a single object. This object is an `Array`. You can easily prove this. Use `$var` as a kind of array reference, as other languages would call it:

```raku
say $var[1]; # 2
```

Its partner, the `@( … )` contextualiser, does the opposite and sets list context.

There is also _sink context_. This is the context of a statement whose value is thrown away. For example, a line may be there only for its side effect. Sometimes a value in sink context does nothing useful. Then Raku may warn about a “useless use”. This is a helpful hint that you forgot to use a result.

When you choose a sigil, `$` or `@`, you really choose a context. Where needed, the contextualisers `$( )` and `@( )` let you change it.

{% include nav.html %}
