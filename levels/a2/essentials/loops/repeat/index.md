---
title: Using repeat
---

{% include menu.html %}

Sometimes a `while` or `until` block does not run at all. This happens when the condition is `False` at the start. A `repeat` block is different: it always runs at least once. Raku checks the condition after the block. You use the same words, `while` or `until`, for the check.

Look at this program.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

At the start, the variable `$x` is `100`. The `while` condition checks if `$x` is less than or equal to `10`. With this value, the condition is already `False`. But the code block still runs first.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Now let's change the program and use `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Run it and check that it works:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
