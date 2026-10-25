---
title: Solution of ’Swap the values‘
---

{% include menu.html %}

This program uses Raku syntax from the section about [scalar variables](/essentials/scalar-variables).

## Code

```raku
my ($a, $b) = 3, 8;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 You can find the source code in the file [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Output

Run the program. Check that it prints the values in the other order.

```console
$ raku exercises/scalar-variables/swap.raku
8, 3
```

## Comments

The program has three steps. First, it creates the variables and gives them values. Then it swaps the values. At the end, it prints them. Each step uses both variables in one statement. Look at the most interesting part. Here, the variables swap their values:

```raku
($a, $b) = $b, $a;
```

You need parentheses on the left side. You can also add them on the right side:

```raku
($a, $b) = ($b, $a);
```

What happens without the parentheses?

```raku
$a, $b = $b, $a;
```

Then you get a warning. It says that `$a` on the right side is not used:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
3, 8
```

In fact, this line is the same as `$b = $b`. This assignment does nothing useful. You can easily see it. Change the values on the right side, for example, like this:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Now the program prints even more warnings. But you can also see something else. Only `$b` gets a new value:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
3, 16
```

{% include nav.html %}
