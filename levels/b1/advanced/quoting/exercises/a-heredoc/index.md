---
title: Exercise ’A heredoc‘
---

{% include menu.html %}

## Problem

Use an *interpolating* heredoc to build a letter that confirms an order. Use a few variables: a customer `$name`, an `$item`, a `$price` and a `$count`. The price is for one item. The heredoc should interpolate the variables. It should *also* calculate the total in the text, with an embedded `{ … }` block (`$count * $price`).

Indent the body of the heredoc to line up with the code around it. Line up the closing terminator with the text. Then the indentation does not appear in the output. Print the result.

## Example

Take `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` and `$count = 3`. Then the program prints the following, with no spaces at the start:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
