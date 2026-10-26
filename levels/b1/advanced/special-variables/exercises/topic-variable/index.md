---
title: Exercise ’The topic variable‘
---

{% include menu.html %}

## Problem

`$_` is the *topic* variable. A `for` loop sets it to each item in turn. A method call like `.chars` starts with a dot and has no object before it. Such a call works on `$_`, so `.chars` means `$_.chars`.

Loop over the three strings `'apple'`, `'fig'`, and `'cherry'`. For each of them, print a line in the form `<word> has <n> letters`. Use the topic `$_` for the word. For its length, use a `.chars` call with a leading dot. Watch how `$_` becomes each string in turn.

## Example

The program prints:

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
