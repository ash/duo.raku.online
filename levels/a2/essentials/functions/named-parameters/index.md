---
title: Named parameters
---

{% include menu.html %}

_Named_ parameters are not like [positional parameters](../positional-parameters). In a call, you write their names.

This function takes two parameters. Their names are `$from` and `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

To call the function, write the name of each argument:

```raku
say distance(from => 30, to => 10); # 20
```

Do not pass the arguments like positional ones. This is an error. For example, the call `distance(30, 10)` gives an error:

    Too many positionals passed; expected 0 arguments but got 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

Here is the good part. You can write named arguments in any order. These two calls do exactly the same thing:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Passing variables

Sometimes you want to pass a value from a variable. The variable has the same name as the parameter. Then a special syntax helps. You type less with it:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

This call does the same as a longer one:

```raku
say distance(from => $from, to => $to); # 20
```

Again, the order does not matter:

```raku
say distance(:$to, :$from); # 20
```

Sometimes the variable and the parameter have different names. Then pass a pair in one of these ways:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# or:

say distance(:from($a), :to($b));
```

{% include nav.html %}
