---
title: 'Solution: Division via subtraction'
---

{% include menu.html %}

Division is subtraction, again and again. The program has a `while` loop. Each time, the loop takes `$b` away from `$a`. It does this while `$a` is not less than `$b`. The variable `$n` counts the rounds. This number is the answer.

## Code

Here is the whole program:

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

Run the program a few times. Start with the numbers in the code. They divide with nothing left over:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Then try other numbers. For example, change `$b` to `20`. Check that the result is correct:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
