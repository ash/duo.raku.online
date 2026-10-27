---
title: The solution of ’Save and read‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 You can find the source code in the file [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Output

```
84
```

## Comments

1. `spurt` creates the file and writes the string to it. `slurp` reads the whole file back into a string. Together, they do the whole job of saving and loading.

1. `slurp` gives back text, `"42\n"`. So before doing arithmetic, we use `trim` to remove the newline at the end. Then we call `.Int` to turn the text into a number. The result, `42 * 2`, is `84`.

1. However, the program still works without `.trim.Int`.

{% include nav.html %}
