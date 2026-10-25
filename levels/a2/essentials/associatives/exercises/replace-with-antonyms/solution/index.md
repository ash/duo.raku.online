---
title: 'Solution: Replace with antonyms'
---

{% include menu.html %}

First, we take the contents of the file [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). We copy them into the solution file [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Then a loop goes over the input arguments. The loop looks for each word in the dictionary. If the word is there, the loop takes its antonym. If not, the program uses the original word.

## Code

Here is the solution. It shows only a part of the dictionary.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Find the program in the file [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Output

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Comments

1. The `//` operator is the [defined-or operator](/essentials/scalar-variables/defined-or-operator). It returns the first operand that is defined.
1. All the keys in the hash are words. They look like identifiers. So you do not need quotes around them. You can also write the hash like this:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
