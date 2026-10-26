---
title: Exercise ’A custom trait‘
---

{% include menu.html %}

## Problem

Your own trait can do more than just be there or not. It can also take an argument. Write a trait `is role(...)`. It takes a string. This string is the role of a subroutine. The trait saves the role in a hash. The key is the name of the subroutine.

Add `is role('admin')` to a subroutine `login`. Then print the saved role of `login`.

## Example

The program prints:

```
admin
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
