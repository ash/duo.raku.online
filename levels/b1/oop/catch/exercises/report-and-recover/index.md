---
title: Exercise ’Report and recover‘
---

{% include menu.html %}

## Problem

Show how a program can recover with the help of `CATCH`. It keeps going with a sensible default value.

Before a block, declare a variable `$timeout` with a default value of `30`. Inside the block, do `die 'config missing'`. Then, on a line that never runs, try to set `$timeout` to `60`. Use a `CATCH` phaser whose `default` block prints `warning: <message>; keeping default`. After the block, print `timeout is <timeout> seconds`.

## Example

The program prints:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
