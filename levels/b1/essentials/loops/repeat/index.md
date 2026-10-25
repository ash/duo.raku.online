---
title: Using repeat
---

{% include menu.html %}

The `while` and `until` blocks may never run if the condition is `False` at the start. The `repeat` block, on the other hand, always runs at least once. The condition is checked after the code block. For the check, you use the same words `while` or `until`.

Look at this program.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

The variable `$x` starts with the value `100`, and the `while` condition checks whether `$x` is less than or equal to `10`. With this value, the condition is already `False`, but the code block still runs once first.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Let us change the program to use `until` instead.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Run it to check that it works as expected:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
