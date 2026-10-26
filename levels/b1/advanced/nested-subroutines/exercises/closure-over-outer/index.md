---
title: Exercise ’Closing over the outer‘
---

{% include menu.html %}

## Problem

A nested subroutine is a *closure*. This means that it can see the variables of the subroutine that contains it. Write a subroutine `greet($name)` with a nested helper `message` that takes **no** arguments. The helper returns `"Hello, $name!"` and reads `$name` directly from `greet` around it. Inside `greet`, print what `message` returns. Then call `greet('Anna')`.

## Example

The program prints:

```
Hello, Anna!
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
