---
title: Item and list context
---

{% include menu.html %}

There are two more contexts. They decide one thing. Is a value a **list** of several values? Or is it one single **item**? The sigils `@` and `$` show this difference.

In _list context_, an array becomes its separate elements. A `for` loop puts its argument in list context. So the loop goes over each element:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

In _item context_, the same array is one single value. The contextualiser `$( … )` sets item context. Now the loop sees only one thing. So it runs one time:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Item context also explains this. You assign an array to a scalar. The scalar gets the whole array as one item. It does not copy the elements. The reason is that `my $x = @a` puts `@a` in item context. Note that this one item can be another container. And this container can have many items in it:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` is a scalar container. So it now keeps one single object. This object is an `Array`. You can easily check this. Use `$var` as a kind of array reference. That is what other languages call it:

```raku
say $var[1]; # 2
```

The contextualiser `@( … )` does the opposite. It sets list context.

There is also _sink context_. In sink context, nobody uses the value of a statement. Raku just throws the value away. For example, a line can be there only for its side effect. A side effect is an extra action of the code, like printing. Sometimes a value in sink context does nothing useful. Then Raku may warn you about a “useless use”. This is a helpful hint. You probably forgot to use a result.

The sigil, `$` or `@`, is really a choice of context. Sometimes you need another context. Then the contextualisers `$( )` and `@( )` change it.

{% include nav.html %}
