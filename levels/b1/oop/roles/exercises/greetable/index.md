---
title: Exercise ’A sized box‘
---

{% include menu.html %}

## Problem

Define a role `Sized` with a method `describe`. It returns the string `size is <size>`, and it uses `self.size` for this.

Then define a class `Box` that does the `Sized` role and has a `size` attribute. Create a box with the size `10`. Print the result of calling `describe` on it. On a second line, print whether the box `~~ Sized`. In other words, print whether Raku sees it as doing the role.

## Example

The program prints:

```
size is 10
True
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
