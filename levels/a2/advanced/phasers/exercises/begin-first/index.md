---
title: Exercise ’Begin first‘
---

{% include menu.html %}

## Problem

A `BEGIN` phaser is not only a block that runs early. It is also an *expression*. Raku calculates its value once, when it compiles the program. Then the value stays in the program and does not change.

Make a variable `$compiled`. Set its first value with `BEGIN { 2 + 3 }`. Then print the variable. Raku calculates `2 + 3` during compilation. But you can still use the stored value when the program runs.

## Example

The program prints:

```
5
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
