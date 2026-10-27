---
title: Exercise ’Too big‘
---

{% include menu.html %}

## Problem

Make a custom exception class `TooBig`. This is a class for your own errors. It inherits from `Exception`. It has two attributes, `value` and `limit`. Its method `message` must return `Value <value> exceeds the limit of <limit>`.

Then write a loop over the values `30`, `99`, and `60`. The limit is `50`. Throw a `TooBig` only when a value is bigger than the limit. Add a `CATCH` phaser with `when TooBig`. It prints the message **and** a second line. For this line, it reads the attribute `limit` of the exception directly. The second line is `Try a value up to <limit>.`. For a value inside the limit, just print that it is fine.

You see that only the failing numbers get an exception. The other numbers pass with no problem. In both cases, the loop goes on.

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
