---
title: Solution of ’Correct the identifiers‘
---

{% include menu.html %}

There are several ways to correct the identifiers. Here are some of them:

## Code

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

All the identifiers are valid. But it is better to avoid apostrophes in names if you `$don't` have strong reasons.

🦋 You can find the source code in the file [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Output

This program does not print anything. But when Rakudo compiles and runs it, you should not get any errors:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Comments

Let us look at what was wrong with the original names:

1. Spaces are not allowed in names: `$ A G E`.
1. A variable needs a sigil: `Name`. Raku can have variables without a sigil, but even they cannot be declared as `my Name`.
1. A name cannot start with an apostrophe, or, to be exact, with a single quote: `$'Middle'Name`.
1. A name cannot start with a digit either: `$2address`.
1. Two hyphens cannot come one after the other: `$from--to`.

{% include nav.html %}
