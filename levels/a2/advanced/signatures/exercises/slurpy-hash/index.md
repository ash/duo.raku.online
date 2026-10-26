---
title: Exercise ’Slurpy named arguments‘
---

{% include menu.html %}

## Problem

Write a subroutine `describe`. Its first parameter is a name. This name is positional and required. After it, a slurpy hash `*%opts` collects any number of named arguments. The subroutine returns a string like this: `name: key=value, key=value, ...`. The string lists every option. The keys are in alphabetical order.

Call it like this: `describe('Anna', colour => 'red', size => 5)`. Print the result.

## Example

The program prints:

```
Anna: colour=red, size=5
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
