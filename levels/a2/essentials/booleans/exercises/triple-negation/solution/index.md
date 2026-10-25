---
title: Solution to ‘Triple negation’
---

{% include menu.html %}

The program in the task does not compile. It needs a small fix. Here is a correct version that works. It has a space between `!` and `!!`:

## Code

```raku
my $value = False;
say ! !!$value;
```

🦋 You can find the full code in the file [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Output

The program prints the opposite Boolean value. You probably expected this:

```console
$ raku triple-negation.raku
True
```

## Comments

The program with three exclamation marks does not compile. We did not expect that:

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

One more space solves this problem. But be careful. Do not make another mistake. Look at this program:

```raku
my $value = False;
say !!! $value;
```

This program compiles. But then it stops with this message:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Why does this happen? `!!!` is a special operator. It marks a part of the code as stub code. Stub code is code that is not ready yet. If the program gets to this place, it stops. It also prints a message. Here, the message is the current value of the variable `$value`. You can read more in 📖 [the documentation](https://docs.raku.org/routine/!!!).

{% include nav.html %}
