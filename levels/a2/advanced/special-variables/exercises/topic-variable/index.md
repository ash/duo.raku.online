---
title: Exercise ’The topic variable‘
---

{% include menu.html %}

## Problem

`$_` is the *topic* variable. A `for` loop sets it to each item, one after another. Some method calls start with a dot, like `.chars`. There is nothing before the dot. Such a call works on `$_`. So `.chars` means `$_.chars`.

Loop over three strings: `'apple'`, `'fig'`, and `'cherry'`. For each string, print a line like this: `<word> has <n> letters`. Use the topic `$_` for the word. For its length, use the call `.chars`. It starts with a dot. See how `$_` becomes each string, one after another.

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
