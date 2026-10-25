---
title: until
---

{% include menu.html %}

The `until` loop is the opposite of `while`. It runs the block of code until the condition becomes `True`. In other words, it runs while the condition is `False`.

Here is the [program from the previous page](../while) again. Now it uses `until` and a new condition:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Run the program and look at the output:

```console
$ raku t.raku 
Enter a number, which is not bigger than 10: 10
You entered 10.
Enter a number, which is not bigger than 10: 4
You entered 4.
Enter a number, which is not bigger than 10: 1
You entered 1.
Enter a number, which is not bigger than 10: 20
You entered 20.
20 is bigger than 10.
```

## `until` vs. `while`

Compare these two lines. They do the same thing with `while` and `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

The two conditions are opposites of each other. So `while` and `until` work as a pair, just like `if` and `unless`.

{% include nav.html %}
