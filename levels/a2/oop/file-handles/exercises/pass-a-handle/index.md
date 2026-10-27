---
title: Exercise ’Pass a handle to a function‘
---

{% include menu.html %}

## Problem

A file handle is a normal value. So you can pass it to a function, like any other argument. Write a subroutine `log-line`. It takes a handle and a message. It writes the message to the handle, on its own line.

Open `log.txt` for writing. Call `log-line` three times. Write `started`, `working`, and `done` with it. Then close the handle. Read the file and print its content.

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
