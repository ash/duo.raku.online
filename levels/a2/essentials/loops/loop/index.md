---
title: loop
---

{% include menu.html %}

The `loop` statement in Raku is like the classic loops in the C language and similar languages. It takes three statements. The first one sets the start value. The second one is the test. The third one changes the loop variable. The body of the loop runs again and again while the test is `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Here, `++` is an operator after a variable. It adds 1 to the variable. You will learn more operators in the second part of the course.

The program runs the body of the loop five times.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

You can leave out some or even all of the statements in the header of `loop`. For example, here is the same program:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

People do not use `loop` very often in Raku. You can see it, for example, in programs that a tool translated from C to Raku. Raku has easier loops, such as `for`. We look at `for` very soon.

{% include nav.html %}
