---
title: until
---

{% include menu.html %}

The `until` construct is the opposite of `while`. It runs the block of code until the condition becomes `True` (in other words, while the condition is `False`).

Here is the [program from the previous page](../while), changed to use `until` and a new condition:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Run the program and check the output:

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

Compare two programs that do the same thing with `while` and `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

As you can see, each condition is the opposite of the other. In this way, `while` and `until` are related in the same way as `if` and `unless`.

{% include nav.html %}
