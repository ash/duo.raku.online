---
title: 'Solution: If the number is within the limits'
---

{% include menu.html %}

The program creates a range from the numbers that the user enters. Then the smartmatch check tests whether the third number is within the range borders. This test gives a Boolean value, so we can print it straight away.

## Code

Here is the solution:

```raku
my $begin = prompt 'From (including): ';
my $end = prompt 'To (excluding): ';

my $n = prompt 'What is the number? ';

say $n ~~ $begin ..^ $end;
```

🦋 Find the program in the file [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Output

Try different cases, including one where the number equals the end of the range.

```console
$ raku exercises/ranges/number-in-limits.raku
From (including): 1
To (excluding): 2
What is the number? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
From (including): 100
To (excluding): 200
What is the number? 100
True

$ raku exercises/ranges/number-in-limits.raku
From (including): -5
To (excluding): -2
What is the number? -2
False
```

## Comment

Note how the range leaves out its right end: `$begin ..^ $end`.

{% include nav.html %}
