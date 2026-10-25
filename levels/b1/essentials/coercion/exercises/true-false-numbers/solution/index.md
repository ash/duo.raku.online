---
title: Solution of ‘True and False integers’
---

{% include menu.html %}

The fastest way to answer the question is to test a few numbers at once. Use the `?` operator on all of them and compare the results:

```raku
for -2, -0.5, -1/3, 0, 1/3, 0.5, 2 -> $n {
    say "$n -> {?$n}";
}
```

From the output, the pattern is clear. Every value prints `True`, except the one in the middle:

    -2 -> True
    -0.5 -> True
    -0.333333 -> True
    0 -> False
    0.333333 -> True
    0.5 -> True
    2 -> True

So the sign and the size of the number do not matter at all. Only zero counts as `False`. The next question is whether this is true for every numeric type. Note that `0` is an `Int`, `0.0` is a `Rat`, and `0e0` is a `Num`:

```raku
my Int $int-zero = 0;
say ?$int-zero; # False

my Rat $rat-zero = 0.0;
say ?$rat-zero; # False

my Num $num-zero = 0e0;
say ?$num-zero; # False
```

Of course, nothing changes if you first change the sign of the number:

```raku
my $int = 0;
say ?(-$int); # False
```

🦋 You can find the full program with the above example in the file [true-false-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-numbers.raku).

{% include nav.html %}
