---
title: Default values
---

{% include menu.html %}

Sometimes you create a scalar variable. But you do not assign a value to it yet. The container still keeps a value. This is its default value. The default depends on the type of the variable.

This program does not use Raku in the best way. But it shows the idea:

```raku
my $int;
say $int + 5;
```

The output has `5`. Maybe you expected this. Maybe you thought that the default value of `$int` is `0`. But the program also prints a warning:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

There are two ways to remove this doubt. You can assign a value directly:

```raku
my $int = 0;
say $int + 5; # 5
```

Or you can give a default value with the `is default` trait:

```raku
my $int is default(0);
say $int + 5; # 5
```

The default value does not have to be zero. It can be any value that you think is good. For example:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
