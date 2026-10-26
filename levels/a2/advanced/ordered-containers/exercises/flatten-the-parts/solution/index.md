---
title: The solution of ’Flatten the parts‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 You can find the source code in the file [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Output

```
[1 2 3 4 5]
5
```

## Comments

1. The code `my @all = @first, @second` does _not_ give a flat array. It makes a nested array of two arrays: `[[1 2] [3 4 5]]`.

1. The `flat` routine puts the elements of both arrays together. It makes one flat sequence. The program keeps this sequence in `@all`. The result has five elements.

{% include nav.html %}
