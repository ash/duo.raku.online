---
title: 'Solution: Leap year'
---

{% include menu.html %}

## Disclaimer

The solution below is meant as practice with conditional checks. For real tasks, you can study the methods of the built-in `Date` class. This class comes in the second part of the course.

## Solution

This algorithm tells if a year is a leap year:

1. if year is not divisible by 4 => common year
1. if year is not divisible by 100 => leap year
1. if year is not divisible by 400 => common year
1. else => leap year

Note that Raku has built-in types for working with dates and times. So we will come back to this task in the second part of the course.

## Code 1

The first solution does exactly what the steps above say:

```raku
my $year = prompt 'Year: ';

if $year % 4 {
    say 'Common year';
}
elsif $year % 100 {
    say 'Leap year';
}
elsif $year % 400 {
    say 'Common year';
}
else {
    say 'Leap year';
}
```

🦋 Find the program in the file [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Code 2

In the second solution, all the logic is in a single expression. The parentheses are not always needed, but here they make the code clearer.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Find the program in the file [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Output

Test both programs with the most important cases, for example, 1900, 2000, 2020 and 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Year: 1900
Common year

$ raku exercises/conditional-checks/leap-year.raku
Year: 2000
Leap year
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2020
Leap year

$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2021
Common year
```

%%tipblock
## `%%` vs `%`

Note that in a Boolean context, the `%%` and `%` operators give opposite results. You can use this to choose the right operator. Then you do not need to write a comparison with zero.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # Flase
```
%%/tipblock

{% include nav.html %}
