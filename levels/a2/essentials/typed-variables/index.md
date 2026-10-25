---
title: Typed variables
---

{% include menu.html %}

In Raku, a scalar variable, or scalar container, keeps one object. This object can be of different types. For example, the same variable can contain a number first. Then it can contain a string:

```raku
my $var = 42;
$var = 'Hello';
```

Here is another example. One expression has different data types in it:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

This is probably not a good way to write code. But it is a fully correct Raku program.

But Raku also lets you say what a variable can keep. The topics below tell you more.

{% include nav.html %}
