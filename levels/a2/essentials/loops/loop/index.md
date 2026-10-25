---
title: loop
---

{% include menu.html %}

Raku has a `loop` statement. It works like the loops in C and similar languages. It has three statements. The first one gives the loop variable its start value. The second one is a test. The third one changes the loop variable. The loop runs while the test is `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Here, `++` is an operator. You write it after a variable. It adds 1 to the variable. The second part of the course has more operators.

The body of the loop runs five times.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

You can leave out some of the three statements in `loop`. You can even leave out all of them. For example, here is the same program:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

In Raku, people do not use `loop` very often. Sometimes a tool changes C code into Raku code. You can see `loop` in such code. Raku has easier loops, like `for`. We look at `for` very soon.

{% include nav.html %}
