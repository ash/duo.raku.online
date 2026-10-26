---
title: Integers
---

{% include menu.html %}

You have used integers since the very start of the course. This section looks at some of their features that are easy to miss.

The most important one is that integers in Raku have _arbitrary precision_. They do not have a fixed number of bytes. They never quietly overflow and give a wrong result. If there is enough memory, an integer can grow as large as you need:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

This is the exact value, not a rounded one. The same is true when you multiply large numbers. For example, Raku calculates the factorial of 50 exactly:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

You can group the digits of long numbers with underscores. This makes them easier to read in your code. The compiler ignores the underscores:

```raku
say 1_000_000; # 1000000
```

The next topics show how to write integers in other number bases. They also introduce a few useful integer methods.

{% include nav.html %}
