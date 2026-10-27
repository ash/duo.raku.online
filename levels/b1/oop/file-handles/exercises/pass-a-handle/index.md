---
title: Exercise ’Pass a handle to a function‘
---

{% include menu.html %}

## Problem

A file handle is an ordinary value. So you can pass it to a function, like any other argument. Write a subroutine `log-line` that takes a handle and a message. It should write the message to the handle on its own line.

Open `log.txt` for writing. Call `log-line` three times to write `started`, `working` and `done`. Then close the handle, read the file back and print its content.

## Example

The program prints:

```
started
working
done
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
