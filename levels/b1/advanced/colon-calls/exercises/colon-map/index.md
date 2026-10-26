---
title: Exercise ’A colon map‘
---

{% include menu.html %}

## Problem

This expression doubles the numbers from `1` to `10`. Then it keeps only the ones that are greater than `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Rewrite the code so that the call to `grep` uses the colon form, not parentheses. Do not change the rest of the chain. Remember that the colon form takes the whole rest of the statement. So only the last call in a chain can use it.

## Example

The program prints:

```
(12 14 16 18 20)
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
