---
title: Exercise ’Dump the data structure‘
---

{% include menu.html %}

## Problem

You have the following nested data structure:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Do two things with it:

1. Use `dd` to print a dump of `@data` for developers.
2. Print the same representation as a string, starting with the text `Structure: `.

## Example

The program prints two similar lines:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
