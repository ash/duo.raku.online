---
title: 'Solution: Division via subtraction'
---

{% include menu.html %}

Division is just subtraction done many times. The program has a `while` loop that subtracts `$b` from `$a`. It repeats this while `$a` is still not less than `$b`. The variable `$n` counts the rounds of the loop. This count is also the result.

## Code

Here is the complete program:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Find the program in the file [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Output

Run the program a few times. Start with the given values, which divide exactly:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Then try other values. For example, set `$b` to `20` and check that the result is correct:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
