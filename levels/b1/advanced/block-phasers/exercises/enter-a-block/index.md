---
title: Exercise ’Enter a block‘
---

{% include menu.html %}

## Problem

`FIRST` runs only once, but an `ENTER` phaser runs *every time* the block is entered. And a loop enters its body again on each pass.

Write a loop over `1..2`. Inside the loop, put an `ENTER` phaser that prints `--entering`. Also add an ordinary statement that prints `body` with the current number. Note that `--entering` appears once on each pass of the loop.

## Example

The program prints:

```
--entering
body 1
--entering
body 2
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
