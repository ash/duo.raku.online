---
title: Solution of ‘Plural ending’
---

{% include menu.html %}

The program must check the number from the user. If it is bigger than one, the word must be plural.

## Code

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Find the program in the file [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Output

Run the program at least two times. Test it with the input `1`. Then try any other whole number bigger than zero:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Comment

You may often make a mistake here. You may type a single `?` instead of the double `??`. Or you may type a colon `:` instead of `!!`. Or you may do both.

{% include nav.html %}
