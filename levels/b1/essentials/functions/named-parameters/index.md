---
title: Named parameters
---

{% include menu.html %}

Unlike [positional parameters](../positional-parameters), _named_ parameters are identified by their names.

This function has two parameters called `$from` and `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

To call this function, you must write the names of the arguments:

```raku
say distance(from => 30, to => 10); # 20
```

If you pass the arguments as if they were positional, you get an error. For example, the call `distance(30, 10)` causes an error:

    Too many positionals passed; expected 0 arguments but got 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

The good thing is that you can list named arguments in any order. The following two calls are exactly the same:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Passing variables

Sometimes the value that you want to pass is kept in a variable. The variable may also have the same name as the parameter. Then you can enjoy a special syntax that saves typing:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

This is similar to a longer call:

```raku
say distance(from => $from, to => $to); # 20
```

Again, the order does not matter here:

```raku
say distance(:$to, :$from); # 20
```

If the names of the variable and the parameter are different, pass a pair. Use one of these ways:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# or:

say distance(:from($a), :to($b));
```

{% include nav.html %}
