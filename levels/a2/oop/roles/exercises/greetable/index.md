---
title: Exercise ’A sized box‘
---

{% include menu.html %}

## Problem

Make a role `Sized` with a method `describe`. The method returns the string `size is <size>`. For the size, it uses `self.size`.

Then make a class `Box`. It does the role `Sized` and has an attribute `size`. Create a box with the size `10`. Call `describe` on it and print the result. On a second line, print the result of `~~ Sized` for the box. It shows if the box counts as doing the role.

## Example

The program prints:

```
size is 10
True
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
