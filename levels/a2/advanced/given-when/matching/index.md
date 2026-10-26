---
title: Matching ranges, types, and conditions
---

{% include menu.html %}

A `when` block does more than check if two values are equal. It does a _smart match_. It compares the topic with the value that you give. So you can match ranges, types, and conditions. You are not limited to single values.

## Ranges

A range matches when the topic is inside it. So `given`/`when` is good for putting numbers into groups:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

The value `75` is in the range `70..79`. So the program prints:

```
C
```

## Types

A type matches when the topic has this type. So you can choose what to do by the kind of value:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` has a string. So the program prints:

```
a string
```

## Conditions

You can also write a comparison directly. Inside `when`, the topic is `$_`. So a condition like `$_ < 0` matches when it is true:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Here, the first `when` matches. The program prints:

```
negative
```

{% include nav.html %}
