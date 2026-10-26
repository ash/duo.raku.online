---
title: Exercise ’Typed or untyped‘
---

{% include menu.html %}

## Problem

Declare two scalar variables next to each other. The first one is `$untyped`. It has no type. The second one is `$typed`. It has the type `Int`. Dump both with `dd` while they are still empty. Then assign `42` to each of them. Dump both again. Look carefully at the output. `dd` describes the two containers in different ways.

## Example

The program prints this to the standard error stream:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
