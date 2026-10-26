---
title: Exercise ’Closing over the outer‘
---

{% include menu.html %}

## Problem

A nested subroutine is a *closure*. It can see the variables of the subroutine around it. Write a subroutine `greet($name)`. Inside it, define a helper `message`. The helper takes **no** arguments. It returns `"Hello, $name!"`. It takes `$name` directly from `greet` around it. Inside `greet`, print the result of `message`. Then call `greet('Anna')`.

## Example

The program prints:

```
Hello, Anna!
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
