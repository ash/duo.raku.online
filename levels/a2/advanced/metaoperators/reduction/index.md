---
title: Reduction metaoperators
---

{% include menu.html %}

You write a reduction meta-operator as a normal operator in square brackets. Examples are `[+]` and `[*]`. It takes a list of values. It puts the operator between every two values. So the whole list becomes one single value.

For example, `[+]` adds up all the elements of a list:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` is the same as writing all the operators yourself:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Other infix operators can work like this too. With `[*]`, you get the product of the list. Use it with the range `1..$n`. This is an easy way to find a factorial:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Here, the range `1..$n` gives the numbers from 1 to 5. Then `[*]` multiplies them: `1 * 2 * 3 * 4 * 5`. This is _5!_.

It also works with strings. The `[~]` reduction joins a list of strings into one string:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

You can even reduce comparison operators. `[<]` tells you if each value is bigger than the value before it:

```raku
say [<] 1, 2, 3; # True
```

## Triangular reduction

Put a backslash inside the brackets. Then you get a _triangular_ reduction. It keeps the result of every step, not only the last result:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Each element of the result is the sum of the first few numbers: `1`, then `1+2`, then `1+2+3`, and so on. The last element is the sum of the whole list.

{% include nav.html %}
