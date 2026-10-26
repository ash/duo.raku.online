---
title: The solution of ’A heredoc‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The heredoc starts with `qq:to`, not with `q:to`. So it interpolates. It works like a `qq` string. It fills in the scalars `$name`, `$count`, and `$item`. It *also* runs code inside the text. The block `{$count * $price}` calculates `3 * 25`. So the total `75` appears in the text.

1. Look at the double quotes in `"$item"`. Here, they are just normal characters. In a heredoc, quotes are not delimiters. So they need no backslash. Raku prints the quotes as they are. But it still interpolates `$item`.

1. The body and the closing `END` both have four spaces in front. Raku removes the indentation of the terminator from every line. So these four spaces never get into the string. The output starts at the left edge.

1. The heredoc already ends with a newline. So the program uses `print`, not `say`. `say` adds one more newline. That gives an extra empty line.

{% include nav.html %}
