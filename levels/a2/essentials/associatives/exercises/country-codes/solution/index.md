---
title: 'Solution: Country codes'
---

{% include menu.html %}

The program has a loop over the `@codes` array. For each code, it gets the name from the hash: `%cc{$_}`.

## Code

Here is a possible solution. It does not show all the countries:

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

For these codes, the program prints this list of countries:

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
