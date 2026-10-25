---
title: 'Solution: Months names'
---

{% include menu.html %}

The program takes the names of the months from the array `@months`. This array has twelve strings. Array indices start with 0. So we must take 1 away from the input number. We do this before we use it as an index.

## Code

Here is the solution:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Find the program in the file [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Output

Run the program a few times. You see different names of months.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Style

There are different ways to format such a list. You can choose any of them. Compare a few options:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Or:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

You can also put all the months on one line.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
