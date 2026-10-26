---
title: Exercise ’An our variable‘
---

{% include menu.html %}

## Problem

Only `our` makes a name visible outside its package. `my` keeps the name private. Create a package `Config`. It has an `our` variable `$port` with the value `8080`. It **also** has a `my` variable `$secret` with the value `42`. From outside the package, print `$Config::port`. Then print if `$Config::secret` is defined. It should not be defined. A `my` variable is not part of the namespace.

## Example

The program prints:

```
8080
False
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
