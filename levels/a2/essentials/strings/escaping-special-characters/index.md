---
title: Escaping special characters in Raku strings
---

{% include menu.html %}

Imagine that you want to print a price label. The name of the product is in a scalar variable. The price is in another scalar variable.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

The price is in dollars. How do you print the label then? You want this output: `Electricity costs $3.14`. But in double quotes, a dollar sign shows a variable. Raku interpolates this variable. To print the `$` itself, escape it with a backslash:

```raku
say "$product costs \$$price";
```

You can also use string concatenation. Then you do not need to escape `$`:

```raku
say $product ~ ' costs $' ~ $price;
```

This version prints exactly the same string. But interpolation looks more natural. It is easier to read. Look at the string in single quotes: `' costs $'`. Here, Raku does not interpolate the `$` character. It does not escape it either. This is the main difference. In single quotes, special characters stay as they are.

Here are some more special characters. They have a special meaning in strings in double quotes:

`\$` | Dollar sign
`\n` | New line
`\r` | Carriage return (back to the start of the line)
`\t` | Horizontal tab
`\"` | Double quote
`\\` | Backslash

The quotes around a string are important. They tell Raku what to do with special characters. Look at these two examples:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Run this program. The first string stays as it is, on one line. The second string is now in two parts:

    One\nTwo
    Three
    Four

In double quotes, `\n` is a special sequence. Raku makes it a newline character. In single quotes, `\n` is just two normal characters: `\` and `n`.

There is an interesting exception for `'` and `\`. In single quotes, you can escape a single quote. Put a `\` before it:

```raku
say '\''; # '
```

Sometimes a single quote comes after a backslash. Then you must escape the backslash too:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
