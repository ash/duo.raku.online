---
title: loop
---

{% include menu.html %}

The `loop` statement in Raku has a lot in common with the traditional loops of the C programming language and its relatives. It takes three statements: the initialiser, the test, and the statement that changes the loop variable. The body of the loop runs again and again while the test stays `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Here, `++` is a postfix operator that increases its argument by 1. We will look at more operators in the second part of the course.

The program runs the body of the loop five times.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Some, or even all, of the statements in the header of `loop` can be left out. For example, here is the same program:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

The `loop` loops are probably the least used loops in Raku. You may find them, for example, in code that a tool translated automatically from C to Raku. But Raku has more convenient loops, such as `for`, which we will look at very soon.

{% include nav.html %}
