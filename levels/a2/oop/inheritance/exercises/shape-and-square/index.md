---
title: Exercise ’A shape and a square‘
---

{% include menu.html %}

## Problem

Make a base class `Shape` with two methods. The method `name` returns `'shape'`. The method `describe` returns the string `I am a <name>`. For the name, it calls its own method `name`.

Then make a class `Square`. It inherits from `Shape`. It overrides `name`. Its own version of `name` returns `'square'`.

Print the description of a `Square`.

## Example

The program prints:

```
I am a square
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
