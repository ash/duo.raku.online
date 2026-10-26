---
title: The solution of ’Does the key exist‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 You can find the source code in the file [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Output

```
False
```

## Comments

1. The `:exists` adverb tells you whether the key is there. It does not get the value.

1. There is no key `z` in the hash, so the result is `False`. An ordinary lookup can create the key as a side effect, but `:exists` does not.

{% include nav.html %}
