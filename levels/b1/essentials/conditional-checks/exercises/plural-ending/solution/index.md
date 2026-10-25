---
title: Solution of ‘Plural ending’
---

{% include menu.html %}

The program should check whether the number is bigger than one. If it is, the word must be in the plural form.

## Code

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Find the program in the file [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Output

Run the program two or more times. Try the input `1` and also some other positive whole number:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Comment

You may often type a single `?` instead of the double `??` by mistake. You may also type a colon `:` instead of `!!`, or make both mistakes.

{% include nav.html %}
