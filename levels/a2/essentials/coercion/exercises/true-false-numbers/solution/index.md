---
title: Solution of ‘True and False integers’
---

{% include menu.html %}

Here is the fastest way to find the answer. Take a few different numbers. Use the `?` operator on all of them at once. Then compare the results:

```raku
for -2, -0.5, -1/3, 0, 1/3, 0.5, 2 -> $n {
    say "$n -> {?$n}";
}
```

The output shows the pattern. All values print `True`. Only the value in the middle does not:

    -2 -> True
    -0.5 -> True
    -0.333333 -> True
    0 -> False
    0.333333 -> True
    0.5 -> True
    2 -> True

So the sign and the size of a number do not matter. Only zero is `False`. Here is the next question. Is this true for every type of number? There are three zeros to check. `0` is an `Int`, and `0.0` is a `Rat`. And `0e0` is a `Num`:

```raku
my Int $int-zero = 0;
say ?$int-zero; # False

my Rat $rat-zero = 0.0;
say ?$rat-zero; # False

my Num $num-zero = 0e0;
say ?$num-zero; # False
```

Of course, a minus before the number changes nothing:

```raku
my $int = 0;
say ?(-$int); # False
```

🦋 You can find the full program with the above example in the file [true-false-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-numbers.raku).

{% include nav.html %}
