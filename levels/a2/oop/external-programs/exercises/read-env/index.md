---
title: Exercise ’Pass a variable to a child‘
---

{% include menu.html %}

## Problem

Create a file `notes.txt`. Write a few lines into it. Put the name of the file into an environment variable `NOTES`. Then use `shell` to run `wc -l`. The shell takes the file name from `$NOTES`. So the child program counts the lines and prints the number. A child program is a program that your program starts. At the end, delete the file from Raku. Use `unlink` for this, not the shell.

## Example

The program prints:

```
3
```

After that, the file `notes.txt` is gone.

## Solution

✅ [See the solution](solution)

{% include nav.html %}
