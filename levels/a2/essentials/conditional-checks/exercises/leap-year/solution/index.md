---
title: 'Solution: Leap year'
---

{% include menu.html %}

## Disclaimer

The solution below is for practice. It trains you to use conditional checks. Raku has a built-in `Date` class. In real life, you can learn its methods. We learn about this class in the second part of the course.

## Solution

These steps tell if a year is a leap year:

1. if year is not divisible by 4 => common year
1. if year is not divisible by 100 => leap year
1. if year is not divisible by 400 => common year
1. else => leap year

Raku has built-in types for dates and times. You can use them too. So the second part of the course has this task again.

## Code 1

The first solution follows the steps above exactly:

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

The second solution puts all the logic into one expression. You do not always need the round brackets. We add them here to make the code clearer.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Find the program in the file [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Output

Try both programs with the most important cases. For example, use 1900, 2000, 2020, and 2021.

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

Sometimes Raku needs `True` or `False`. We call this a Boolean context. In a Boolean context, `%%` and `%` give opposite results. If one gives `True`, the other gives `False`. You can use this fact. Choose one of the two operators. Then you do not need to write a comparison with zero.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # Flase
```
%%/tipblock

{% include nav.html %}
