---
title: 'Solution: Fractional part'
---

{% include menu.html %}

How do you get the fractional part of a number? Take away the integer part. To get the integer part, convert the number to an `Int`.

## Code

Here is one solution:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Find the program in the file [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Output

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Comment

Also try the program with negative numbers. For example:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

The result is correct here too:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
