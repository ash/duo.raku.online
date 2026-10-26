---
title: Reduction metaoperators
---

{% include menu.html %}

A reduction meta-operator is an ordinary operator in square brackets, like `[+]` or `[*]`. It takes a list of values and puts the operator between every pair of them. In this way, it reduces the whole list to a single value.

For example, `[+]` adds up all the elements of a list:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

The code `[+] @data` is the same as writing out the operator by hand:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Any suitable infix operator works in the same way. With `[*]`, you get the product of the list. So you can use it on the range `1..$n` to calculate a factorial easily:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Here, the range `1..$n` gives the numbers from 1 to 5, and `[*]` multiplies them: `1 * 2 * 3 * 4 * 5`. The result is _5!_.

It works for joining strings too. The `[~]` reduction joins a list of strings into one:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

You can even reduce comparison operators. `[<]` tells you whether every value is bigger than the one before it:

```raku
say [<] 1, 2, 3; # True
```

## Triangular reduction

If you put a backslash inside the brackets, you get a _triangular_ reduction. It keeps all the results in between, not only the final one:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Each element of the result is a partial sum: `1`, then `1+2`, then `1+2+3`, and so on. The last one is the sum of the whole list.

{% include nav.html %}
