---
title: Solution to ‘Triple negation’
---

{% include menu.html %}

The program from the task does not compile, so it needs a small fix. Here is a correct version that works (with a space added between `!` and `!!`):

## Code

```raku
my $value = False;
say ! !!$value;
```

🦋 You can find the full code in the file [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Output

As you probably expected, the program prints the opposite Boolean value:

```console
$ raku triple-negation.raku
True
```

## Comments

Surprisingly, the program with three exclamation marks did not compile:

```console
$ raku triple-negation.raku
===SORRY!=== Error while compiling /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Two terms in a row
at /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    expecting any of:
        infix
        infix stopper
        postfix
        statement end
        statement modifier
        statement modifier loop
```

One extra space solves this problem. But do not fall into another trap. Look at the following program:

```raku
my $value = False;
say !!! $value;
```

This program compiles, but it stops with the following message:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

This happens because `!!!` is a special operator. It marks a part of the code as stub code, that is, unfinished code. If the program reaches this point, it stops and prints the message. In our case, the message was the current value of the variable `$value`. See 📖 [the documentation](https://docs.raku.org/routine/!!!) for more details.

{% include nav.html %}
