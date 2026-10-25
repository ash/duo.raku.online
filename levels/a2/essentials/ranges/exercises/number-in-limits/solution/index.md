---
title: 'Solution: If the number is within the limits'
---

{% include menu.html %}

The program makes a range from the numbers that the user enters. Then a smartmatch checks if the third number is in the range. The result of this test is a Boolean value. So we can print it at once.

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

Test different cases. Also try a number that is equal to the end of the range.

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

Note that the right end is not part of the range: `$begin ..^ $end`.

{% include nav.html %}
