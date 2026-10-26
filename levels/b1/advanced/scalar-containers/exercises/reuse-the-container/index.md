---
title: Exercise ’Typed or untyped‘
---

{% include menu.html %}

## Problem

Declare two scalar variables next to each other: `$untyped`, which has no type, and `$typed`, which has the type `Int`. Dump both with `dd` while they are still empty. Then assign `42` to each and dump both again. Look closely at how differently `dd` describes the two containers.

## Example

The program prints this to standard error:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
