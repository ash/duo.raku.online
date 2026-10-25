---
title: Typed variables
---

{% include menu.html %}

In Raku, a scalar variable (or a scalar container) keeps a single object. This object can be of different types. For example, the same variable can first contain a number and then a string:

```raku
my $var = 42;
$var = 'Hello';
```

Here is another example, which mixes different data types in one expression:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

This is probably not the best coding practice. But it is a perfectly correct Raku program.

However, Raku lets you choose what a variable may keep. You will find more details in the topics below.

{% include nav.html %}
