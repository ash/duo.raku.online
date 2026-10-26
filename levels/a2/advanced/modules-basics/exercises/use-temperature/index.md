---
title: Exercise ’Use the converter‘
---

{% include menu.html %}

## Problem

Here is a module in the file `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Write a separate program. It uses this module. The program gets a temperature in Celsius as a command-line argument. It changes the temperature to Fahrenheit with the module. Then it prints the result.

## Example

```console
$ raku -I. temperature.raku 100
212
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
