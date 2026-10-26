---
title: The solution of ’The topic variable‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 You can find the source code in the file [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Output

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Comments

1. In a `for` loop, the topic variable `$_` gets each item, one by one. So the block runs three times. First `$_` is `'apple'`, then `'fig'`, then `'cherry'`.

1. In the string, `$_` puts the current word into the text. The call `.chars` gives the length of the word. It is short for `$_.chars`. Both use the same topic. So the number always fits the word on the line.

{% include nav.html %}
