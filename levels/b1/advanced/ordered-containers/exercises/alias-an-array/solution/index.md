---
title: The solution of ’Alias an array‘
---

{% include menu.html %}

Here is one possible solution to the task.

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

1. The binding `@alias := @original` does not copy the array. It makes `@alias` another name for the same array container.

1. This time, the change goes through `@original`, and it changes the structure: `push` adds an element. Both names are the very same container, so `@alias` sees the new element too. You can always use one name instead of the other. It does not matter which one you use to read or change the array.

{% include nav.html %}
