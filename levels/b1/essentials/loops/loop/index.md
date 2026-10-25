---
title: loop
---

{% include menu.html %}

The `loop` statement in Raku is very similar to traditional loops in C and languages like it. It takes three statements. The first sets a start value, and the second is the test. The third changes the loop variable. The body of the loop runs again and again while the test is `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Here, `++` is a postfix operator, which means that it comes after its argument. It adds 1 to the argument. There are more operators in the second part of the course.

The program runs the body of the loop five times.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Some of the statements in the `loop` header, or even all of them, are optional. For example, here is the same program:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Raku programmers probably use `loop` less than any other loop. You may find it, for example, in code that a tool converted from C to Raku. But Raku has more convenient loops, such as `for`. We will look at it very soon.

{% include nav.html %}
