---
title: The solution of ’Alias an array‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 You can find the source code in the file [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Output

```
[10 20 30 40]
```

## Comments

1. Look at the binding `@alias := @original`. It makes `@alias` a second name for the same array container. It does not copy the array.

1. This time, the program changes the array through `@original`. It changes the structure: `push` adds an element. Both names belong to the very same container. So `@alias` sees the new element too. The two names work in exactly the same way. You can read or change the array with either name.

{% include nav.html %}
