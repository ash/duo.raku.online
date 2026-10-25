---
title: 'Solution: Fractional part'
---

{% include menu.html %}

To get the fractional part of a number, subtract its integer part from it. You can get the integer part by converting the number to an `Int`.

## Code

A possible solution is shown below:

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

Try the same program with negative numbers too, for example:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

In this case, the result should also be correct:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
