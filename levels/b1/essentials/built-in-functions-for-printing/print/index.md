---
title: The print routine
---

{% include menu.html %}

Here is what the built-in routine `print` does:

1. Calls the `Str` method on its arguments to convert them to a string.
1. Sends the string to the `STDOUT` stream.

For simple data types, `print` gives almost the same output as [`say`](../say). It just has no newline character at the end.

```raku
print 42;
print 'Raku';
```

The two values are printed right after each other. The whole output also does not end with a newline.

```console
$ raku t.raku
42Raku
```

With data that holds several values, the result can differ from `say`. For example, try arrays and hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # To separate the parts

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

This is what the output looks like:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

You can also call the `print` routine as a method:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
