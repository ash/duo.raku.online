---
title: The solution of ’Count the characters‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `slurp` reads the file as a string. `.chars` counts the characters in it. There are four.

1. Look at the file. You see only these four characters. There is no newline character at the end.

{% include nav.html %}
