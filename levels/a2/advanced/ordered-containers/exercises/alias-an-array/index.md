---
title: Exercise ’Alias an array‘
---

{% include menu.html %}

## Problem

Here is an array:

```raku
my @original = 10, 20, 30;
```

Make a second name, `@alias`, for the _same_ array. Do not copy the array. This time, add a new element to `@original` with `push`. Then print `@alias`. This shows that the alias sees more than new values. It also sees changes to the structure of the array.

## Example

The program prints:

```
[10 20 30 40]
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
