---
title: Exercise ’Dump the data structure‘
---

{% include menu.html %}

## Problem

Here is a nested data structure. It has data inside other data:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Do two things with it:

1. Dump `@data` with `dd`, in a form for programmers.
2. Print the same form as a string. Put the text `Structure: ` before it.

## Example

The program prints two lines. They are very similar:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
