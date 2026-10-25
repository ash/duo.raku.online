---
title: 'Exercise: Replace with antonyms'
---

{% include menu.html %}

## Problem

Write a program. It takes words from the command line. It changes each word to its antonym. An antonym is a word with the opposite meaning. Some words are not in the dictionary. Do not change these words. Print them as they are.

Keep the dictionary of antonyms in a hash. Write the hash directly in the code. To help you, we made a list of about 200 pairs. You can copy and paste it into your program: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Each pair is in the list two times, once in each direction. For example:

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

Make the program as simple as you can. Print each word on its own line.

## Example

Run the program and give it a few words. At least some of the words must be in the dictionary.

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
