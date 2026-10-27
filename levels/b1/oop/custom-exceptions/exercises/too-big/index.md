---
title: Exercise ’Too big‘
---

{% include menu.html %}

## Problem

Define a custom exception class `TooBig`. It inherits from `Exception` and has two attributes, `value` and `limit`. Its `message` method should return `Value <value> exceeds the limit of <limit>`.

Then loop over the values `30`, `99`, and `60`, with a limit of `50`. For each value, throw a `TooBig` only if the value is above the limit. Use a `CATCH` phaser with `when TooBig` that prints the message **and** a second line. On that line, it reads the `limit` attribute of the exception directly. It prints `Try a value up to <limit>.`. A value within the limit should simply report that it is fine.

This shows that only the failing numbers cause an exception. The other numbers pass straight through, and the loop goes on in both cases.

## Example

The program prints:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
