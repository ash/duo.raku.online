---
title: Solution of ’Swap the values‘
---

{% include menu.html %}

In this program, we use parts of Raku syntax from the section about [scalar variables](/essentials/scalar-variables).

## Code

```raku
my ($a, $b) = 3, 8;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 You can find the source code in the file [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Output

Run the program and check that it prints the values in a different order.

```console
$ raku exercises/scalar-variables/swap.raku
8, 3
```

## Comments

This program has three steps. It creates and assigns the variables, swaps their values and prints them. Each step uses both variables in the same statement. The most interesting part is how the variables exchange their values:

```raku
($a, $b) = $b, $a;
```

The parentheses on the left side are necessary. But you can also add them on the right side:

```raku
($a, $b) = ($b, $a);
```

What happens if you leave out the parentheses?

```raku
$a, $b = $b, $a;
```

In this case, Raku warns you that `$a` on the right side is not used:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
3, 8
```

In fact, this line does the same as the useless assignment `$b = $b`. You can see this easily if you change the values on the right, for example:

```raku
$a, $b = 2 * $b, 3 * $a;
```

This time, there are even more warnings. But you can also see that only `$b` changed its value:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
3, 16
```

{% include nav.html %}
