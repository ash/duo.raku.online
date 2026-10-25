---
title: until
---

{% include menu.html %}

An `until` loop is the opposite of a `while` loop. It runs the block of code until the condition is `True`. So it runs while the condition is `False`.

Here is the [program from the last page](../while) again. Now it has `until` and a new condition:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Run the program and see what it prints:

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

These two programs do the same thing. One has `while`, and one has `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Look at the two conditions. One is the opposite of the other. `while` and `until` are a pair, like `if` and `unless`.

{% include nav.html %}
