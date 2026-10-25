---
title: 'Solution: Months names'
---

{% include menu.html %}

The names of the months come from the array `@months`, which has twelve strings. Array indices start with 0. So before indexing the array, we subtract 1 from the input number.

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

Run the program a few times to see different month names.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Style

You can choose how to format lists like the one in this program. Here are a few options to compare:

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

You can also list all the months in a single line.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
