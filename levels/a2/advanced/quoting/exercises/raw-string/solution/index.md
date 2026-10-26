---
title: The solution of ’A raw string‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say Q{$x and \n};
```

🦋 You can find the source code in the file [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Output

```
$x and \n
```

## Comments

1. `Q` is the most literal quoting form. It interpolates nothing. It also does not process escapes.

1. So `$x` stays as text. And `\n` stays as two characters: a backslash and an `n`.

{% include nav.html %}
