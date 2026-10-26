---
title: Binding with `:=`
---

{% include menu.html %}

So far, every variable you created got a new container. Assignment with `=` put a value _into_ that container. Binding, written as `:=`, is different. It makes a name refer to an _existing_ container instead of creating a new one.

After binding, the two names share the same container. So a change through one name is visible through the other:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Here, `$y := $x` does not copy the value `10`. Instead, `$y` becomes another name for exactly the same container as `$x`. Later, when `$x` is set to `20`, `$y` also gives `20`.

Now compare it with normal assignment. It copies the value into a separate container:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Binding also works with arrays. This code makes `@alias` another name for `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

One more detail. If you bind a name directly to a literal value, no container is behind it. So the name becomes read-only:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
