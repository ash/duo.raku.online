---
title: Dumping variables
---

{% include menu.html %}

To see the value of a variable, call `dd`. It is like `say`:

```raku
my $var = 42;
dd $var;
```

`dd` shows the value. It also shows the name of the variable:

```console
$var = 42
```

A variable can have a declared type. Then `dd` shows the type too. Compare the output of this program with the last one:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

This is the main difference from `say`. Call `dd` once on a scalar. It shows you the name of the variable. It also shows the type of the data, if Raku knows it. So you can put several `dd` calls in a program. You still know which output is from which variable.

You can also dump bigger data structures, like arrays or hashes. Then `dd` prints the value in a form like code:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Note that you can clearly see the inner array. But `dd` does not print the name of the variable here. It works the same way with hashes. `dd` prints the keys of a hash in sorted order:

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
