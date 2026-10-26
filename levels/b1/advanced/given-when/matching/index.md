---
title: Matching ranges, types, and conditions
---

{% include menu.html %}

A `when` block does not only check whether two values are equal. It does a _smart match_ between the topic and the value that you give it. So you can match against ranges, types and conditions, not only single values.

## Ranges

A range matches when the topic is inside it. This makes `given`/`when` a natural choice for dividing numbers into groups:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

The value `75` is in the range `70..79`, so the program prints:

```
C
```

## Types

A type matches when the topic is of that type. So the program can choose a branch by the kind of value it has:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` holds a string, so the program prints:

```
a string
```

## Conditions

You can also write a comparison directly. Inside the `when`, you can use the topic as `$_`. So a condition such as `$_ < 0` matches when it is true:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Here the first `when` matches, and the program prints:

```
negative
```

{% include nav.html %}
