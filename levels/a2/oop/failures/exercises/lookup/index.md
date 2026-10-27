---
title: Exercise ’Lookup or not found‘
---

{% include menu.html %}

## Problem

Write a subroutine `lookup`. If its argument is `'a'`, it returns `100`. Otherwise, it calls `fail` with the message `no such key`.

Call `lookup('z')`. If the result is defined, print it. If not, print `not found`. Then print a second line with the reason for the failure. Take the reason from the `Failure` itself. The line looks like this: `reason: <message>`.

## Example

The program prints:

```
not found
reason: no such key
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
