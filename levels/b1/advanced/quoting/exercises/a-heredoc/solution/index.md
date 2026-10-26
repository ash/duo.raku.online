---
title: The solution of ’A heredoc‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 You can find the source code in the file [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Output

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Comments

1. The heredoc starts with `qq:to` instead of `q:to`, so it interpolates. Like a `qq` string, it fills in the scalars `$name`, `$count` and `$item`. It *also* runs code inside the text: the block `{$count * $price}` calculates `3 * 25`. So the total, `75`, appears right in the text.

1. The double quotes around `"$item"` are just normal characters here. Inside a heredoc, there is no delimiter that needs escaping. So the quotes are printed as written, while `$item` is still interpolated.

1. The body and the closing `END` have the same indentation of four spaces. The indentation of the terminator is removed from every line. So those four spaces never get into the string. The output starts at the left edge.

1. The heredoc already ends with a newline. So the code uses `print` instead of `say`. With `say`, you would get a second newline and an extra empty line.

{% include nav.html %}
