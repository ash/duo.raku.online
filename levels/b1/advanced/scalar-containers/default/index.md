---
title: Default values
---

{% include menu.html %}

Sometimes you create a new scalar variable without assigning anything to it right away. Even then, the container holds a value, its default value. The exact default depends on the type of the variable.

The next program is not the best way to use Raku. But it shows the idea:

```raku
my $int;
say $int + 5;
```

The output contains `5`. You may have expected that if you thought the default value of `$int` is `0`. But the program also prints a warning:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

To make it clear what the value is, you can either assign it yourself:

```raku
my $int = 0;
say $int + 5; # 5
```

Or you can set a default value with the trait `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

The default value does not have to be zero. It can be any value that you think is a good choice, for example:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
