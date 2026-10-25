---
title: '"for" loop'
---

{% include menu.html %}

The `for` loop is a powerful tool for going through several elements one by one. For example, let us take a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

In this program, the variable `$n` takes the next value from the range on each iteration. Notice that you do not need to declare the variable with `my`. The block of code repeats as many times as there are elements in the data source. So, the program prints the numbers line by line:

```console
$ raku t.raku 
1
2
3
4
5
```

The program goes through all the values that the [range](/essentials/ranges) `1..5` produces. These are `1`, `2`, `3`, `4`, and `5`.

## Taking more than one value

An interesting feature of Raku is that you can take more than one item in a single iteration. The following program prints two numbers each time the loop runs:

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
