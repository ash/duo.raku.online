---
title: 'Solution: Salary raise'
---

{% include menu.html %}

The program needs to change one of the values in the hash. Assigning the new value works almost the same way as with a scalar variable.

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

When you run the program, check that your calculations are correct. Also check that you converted the percents correctly.

```console
$ raku exercises/associatives/salary-raise.raku
New salary of Eliza Vents: 3150
```

{% include nav.html %}
