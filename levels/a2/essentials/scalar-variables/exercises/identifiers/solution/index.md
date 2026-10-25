---
title: Solution of ’Correct the identifiers‘
---

{% include menu.html %}

You can fix the identifiers in more than one way. Here are some ways:

## Code

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

All these identifiers are correct. But names with apostrophes are not a good idea. Avoid them if you `$don't` have a strong reason.

🦋 You can find the source code in the file [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Output

This program prints nothing. Rakudo compiles and runs it. You should see no errors:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Comments

Here are the problems with the names in the task:

1. A name cannot have spaces: `$ A G E`.
1. A variable needs a sigil: `Name`. Raku does have variables without a sigil. But even for them, you cannot write `my Name`.
1. A name cannot start with an apostrophe: `$'Middle'Name`. In fact, it is a single quote here.
1. A name also cannot start with a digit: `$2address`.
1. A name cannot have two hyphens next to each other: `$from--to`.

{% include nav.html %}
