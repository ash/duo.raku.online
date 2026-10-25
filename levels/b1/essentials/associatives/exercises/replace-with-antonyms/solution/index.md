---
title: 'Solution: Replace with antonyms'
---

{% include menu.html %}

The solution file, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), starts with a copy of [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). After that, a loop goes over the input arguments. It tries to find each word in the dictionary. If it can, it takes the antonym. If there is no such word in the dictionary, the original word is used.

## Code

The solution is below, but only part of the dictionary is shown here.

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
1. All the keys in the hash are words that look like identifiers. So you do not need to put them in quotes. This means you can also create the hash like this:

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
