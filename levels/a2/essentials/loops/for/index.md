---
title: '"for" loop'
---

{% include menu.html %}

The `for` loop is very useful. It goes through many items, one at a time. For example, take a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` gets the next value from the range each time. You do not need to write `my` before `$n`. The block runs one time for each value in the range. So the program prints the numbers, one on each line:

```console
$ raku t.raku 
1
2
3
4
5
```

The program goes through all the values of the [range](/essentials/ranges) `1..5`. These values are `1`, `2`, `3`, `4`, and `5`.

## More than one value at a time

In Raku, a loop can take two or more items each time. This program prints two numbers at a time:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Here is what the program prints:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
