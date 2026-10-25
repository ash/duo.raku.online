---
title: while
---

{% include menu.html %}

The `while` loop has a condition and a block of code. Raku runs the block again and again _while_ the condition is `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

The program asks you for a number. If the number is not bigger than 10, the loop runs again. When the number is bigger than 10, the condition `$x <= 10` is no longer true. Then the loop stops, and the program goes to the next line.

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

{% include nav.html %}
