---
title: Integers
---

{% include menu.html %}

You have used integers from the very start of the course. Integers are whole numbers. This section shows a few of their features. You may not notice these features at first.

The most important feature is _arbitrary precision_. An integer in Raku has no fixed number of bytes. So it never overflows. In an overflow, a number gets too big. Then it quietly becomes wrong. With enough memory, an integer can be as big as you need:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

This value is exact. It is not rounded. The same is true when you multiply big numbers. For example, Raku finds the exact factorial of 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Long numbers in the code are hard to read. So you can put the digits in groups with underscores. The compiler skips the underscores:

```raku
say 1_000_000; # 1000000
```

The next topics show how to write integers in other bases. Base 10 is not the only one. They also show a few useful methods for integers.

{% include nav.html %}
