---
title: Binding with `:=`
---

{% include menu.html %}

Until now, each new variable made a new container. Assignment with `=` put a value _into_ this container. Binding is different. You write it with `:=`. Binding does not make a new container. It gives a name to an _existing_ container.

After binding, the two names share one container. Change the value with one name. The other name sees the change too:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Here, `$y := $x` does not copy the value `10`. It makes `$y` a second name for the container of `$x`. It is the same container. Later, `$x` gets the value `20`. Then `$y` is `20` too.

Compare this with normal assignment. It copies the value into a different container:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Binding works with arrays too. Here, `@alias` becomes a second name for `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

One more detail. You can bind a name directly to a literal value. This is a value that you write in the code. Then there is no container behind the name. So the name is read-only. You cannot assign anything to it:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
