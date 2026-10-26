---
title: The solution of ’Count in a bag‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 You can find the source code in the file [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Output

```
2
6
```

## Comments

1. `'the cat sat on the mat'.words` gives the six words, and `bag` counts each of them. The subscript `<the>` returns how many times `the` was seen, which is twice.

1. The `total` method adds up all the counts. This is the same as the number of words put into the bag, `6`.

{% include nav.html %}
