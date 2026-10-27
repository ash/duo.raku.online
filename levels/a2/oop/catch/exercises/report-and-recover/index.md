---
title: Exercise ’Report and recover‘
---

{% include menu.html %}

## Problem

Show how `CATCH` helps a program recover after an error. The program does not stop. It goes on with a safe default value.

Before a block, make a variable `$timeout`. Give it the default value `30`. Inside the block, do `die 'config missing'`. On the next line, try to set `$timeout` to `60`. The program never gets to this line. Add a `CATCH` phaser with a `default` block. It prints `warning: <message>; keeping default`. After the block, print `timeout is <timeout> seconds`.

## Example

The program prints:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
