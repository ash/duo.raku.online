---
title: The print routine
---

{% include menu.html %}

The built-in routine `print` does two things:

1. Converts its arguments to a string. For this, it calls the `Str` method on them.
1. Sends the string to the `STDOUT` stream.

With simple data types, `print` works like [`say`](../say). But it does not add a newline character at the end.

```raku
print 42;
print 'Raku';
```

The program prints the values one after another. Also, there is no newline at the end of the whole output.

```console
$ raku t.raku
42Raku
```

Some data types keep many values. With them, `print` and `say` can give different results. Try arrays and hashes, for example:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # To separate the parts

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Here is the output:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

You can also call `print` as a method:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
