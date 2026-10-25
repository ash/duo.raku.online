---
title: Using repeat
---

{% include menu.html %}

A `while` or `until` loop may not run at all. This happens when the condition is `False` at the start. A `repeat` block is different. It always runs at least once. Raku checks the condition after the block. You use the same words for the check: `while` or `until`.

Look at this program.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

At the start, the variable `$x` is `100`. The `while` condition checks if `$x` is `10` or less. So the condition is already `False`. But the block of code still runs once.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Now let's write the program with `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Run it and check the result:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
