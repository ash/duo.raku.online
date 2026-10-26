---
title: The solution of ’Sum with the `&` sigil‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 You can find the source code in the file [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Output

```
5
```

## Comments

1. The pointy block has two parameters: `-> $a, $b`. So the anonymous subroutine takes two arguments.

1. The variable has the `&` sigil. So you can call it as `add(2, 3)`. It works like a normal named subroutine. You do not write the sigil in the call. The result is `5`.

{% include nav.html %}
