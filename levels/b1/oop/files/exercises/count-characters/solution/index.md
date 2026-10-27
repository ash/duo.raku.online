---
title: The solution of ’Count the characters‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 You can find the source code in the file [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Output

```
4
```

## Comments

1. `spurt` writes the string `Raku` to the file.

1. `slurp` reads it back as a string, and `.chars` counts its characters. There are four.

1. If you look into the file, you will really see only the four characters. No newline character is added.

{% include nav.html %}
