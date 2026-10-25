---
title: 'Solution: Country codes'
---

{% include menu.html %}

To turn a code into a name, the program looks it up in the hash: `%cc{$_}`. It does this in a loop over the `@codes` array.

## Code

Here is one possible solution, without the full list of countries:

```raku
my %cc =
    AD => 'Andorra',
    AE => 'United Arab Emirates',

    # . . .

    ZM => 'Zambia',
    ZW => 'Zimbabwe'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Find the program in the file [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Output

With the codes from the task, the program prints the following countries:

```console
$ raku exercises/associatives/country-codes.raku
France
Italy
Germany
Estonia
Latvia
United States of America
China
India
Brazil
```

{% include nav.html %}
