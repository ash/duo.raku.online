---
title: Dumping variables
---

{% include menu.html %}

Call `dd` to see what is inside a variable. You use it in the same way as `say`:

```raku
my $var = 42;
dd $var;
```

`dd` prints both the value and the name of the variable:

```console
$var = 42
```

If the variable has a declared type, `dd` shows the type as well. Compare the output of this program with the one before:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

This is the main difference from `say`. One `dd` call on a scalar tells you the name of the variable. It also tells you the type of the data, when it is known. So you can add several `dd` calls to a program. You will still see which output belongs to which variable.

You can also dump more complex data structures, for example, arrays or hashes. Then `dd` prints the value in a code-like form:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Note that you can clearly see the nested array. But the name of the variable is not printed. The same works for hashes, and `dd` prints their keys in sorted order:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
