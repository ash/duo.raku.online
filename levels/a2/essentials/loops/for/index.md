---
title: '"for" loop'
---

{% include menu.html %}

The `for` loop is a strong tool. It goes through many elements, one by one. For example, let's take a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

In this program, the variable `$n` gets the next value from the range each time. You do not need to declare the variable with `my`. The block of code runs once for each element of the range. So the program prints the numbers, one on each line:

```console
$ raku t.raku 
1
2
3
4
5
```

The program goes through all the values of the [range](/essentials/ranges) `1..5`. These are `1`, `2`, `3`, `4`, and `5`.

## More than one value at a time

In Raku, a loop can take more than one item at a time. This program prints two numbers each time:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Here is the output of the program:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
