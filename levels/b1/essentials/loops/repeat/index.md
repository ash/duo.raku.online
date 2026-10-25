---
title: Using repeat
---

{% include menu.html %}

A `while` or `until` block may never run if the condition is `False` from the start. A `repeat` block, on the other hand, always runs at least once. Its condition is checked after the block. For the check, you use the same words, `while` or `until`.

Take a look at this program.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

The variable `$x` starts at `100`. The `while` condition checks whether `$x` is less than or equal to `10`. With this value, the condition is already `False`, but the block still runs once first.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Now let us change the program to use `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Run it to check that it works the way you expect:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
