---
title: 'Exercise: Replace with antonyms'
---

{% include menu.html %}

## Problem

Write a program that replaces all the words from the command line with their antonyms. Antonyms are words with the opposite meaning. If a word is not in the dictionary, print it without changes.

Keep the dictionary of antonyms in a hash, right in the program code. To make things easier, here is a ready list of about 200 pairs: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). You can copy and paste it straight into your program. All the pairs are there in both directions, for example:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Keep the program as simple as possible, and print the words one per line.

## Example

Run the program with a few words as arguments. Check that at least some of them are in the dictionary.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
