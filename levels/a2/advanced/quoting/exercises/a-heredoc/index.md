---
title: Exercise ’A heredoc‘
---

{% include menu.html %}

## Problem

Write a letter that confirms an order. Use a heredoc that *interpolates*. Build the letter from a few variables. The variables are a customer `$name`, an `$item`, a `$price`, and a `$count`. The price is for one item. The heredoc puts in the values of the variables. It *also* finds the total. For this, it has a `{ … }` block inside the text (`$count * $price`).

Indent the body of the heredoc. It must line up with the code around it. Put the closing terminator at the same indent as the text. Then the output has no indentation. Print the result.

## Example

Take `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25`, and `$count = 3`. Then the program prints this. There are no spaces at the start of the lines:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
