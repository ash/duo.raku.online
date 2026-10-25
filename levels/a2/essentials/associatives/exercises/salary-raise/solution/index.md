---
title: 'Solution: Salary raise'
---

{% include menu.html %}

The program must change one value in the hash. You assign a new value to it. This is almost the same as with a scalar variable.

## Code

Here is the solution:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # in percents

%employee<salary> *= (1 + $raise / 100);
say "New salary of %employee<full-name>: %employee<salary>";
```

🦋 Find the program in the file [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Output

Run the program. Check that the calculations are correct. Also check that you convert the percents in the right way.

```console
$ raku exercises/associatives/salary-raise.raku
New salary of Eliza Vents: 3150
```

{% include nav.html %}
