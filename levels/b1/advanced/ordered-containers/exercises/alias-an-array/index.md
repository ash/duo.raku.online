---
title: Exercise ’Alias an array‘
---

{% include menu.html %}

## Problem

You have this array:

```raku
my @original = 10, 20, 30;
```

Create a second name, `@alias`, for the _same_ array, without copying it. This time, `push` a new element onto `@original`, and then print `@alias`. This shows that the alias sees changes in structure too, not only in values.

## Example

The program prints:

```
[10 20 30 40]
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
