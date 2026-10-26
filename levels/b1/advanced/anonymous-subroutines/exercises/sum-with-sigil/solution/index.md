---
title: The solution of ’Sum with the `&` sigil‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The pointy block has two parameters, `-> $a, $b`. That is why the anonymous subroutine needs two arguments.

1. The variable is declared with the `&` sigil. So you can call it as `add(2, 3)`, exactly like a named subroutine. You need no sigil in the call. This gives `5`.

{% include nav.html %}
