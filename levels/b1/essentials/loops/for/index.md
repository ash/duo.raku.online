---
title: '"for" loop'
---

{% include menu.html %}

The `for` loop is a powerful tool. It goes through many elements, one after another. For example, let us take a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

Each time the loop runs, the variable `$n` takes the next value from the range. Note that you do not have to declare the variable with `my`. The block of code runs once for each element of the data source. So the program prints the numbers one per line:

```console
$ raku t.raku 
1
2
3
4
5
```

The program goes through all the values that the [range](/essentials/ranges) `1..5` gives. These are `1`, `2`, `3`, `4`, and `5`.

## Taking more than one value

Here is an interesting feature of Raku. A loop can take more than one item at a time. The next program prints two numbers each time the loop runs:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

This is the output of the program:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
