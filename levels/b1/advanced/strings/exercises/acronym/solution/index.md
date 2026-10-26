---
title: The solution of ’Acronym‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 You can find the source code in the file [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Output

```
HTML
```

## Comments

1. `$phrase.words` returns the list of words. For each word, the loop takes the first character with `substr(0, 1)`. Then it adds this character to the end of `$acronym`.

1. When all the first letters are collected, `uc` turns the result into upper case: `HTML`.

{% include nav.html %}
