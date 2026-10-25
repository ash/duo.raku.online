---
title: Escaping special characters in Raku strings
---

{% include menu.html %}

Imagine that you want to print a price label. You keep the name of the product and its price in two scalar variables.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

How do you print the label if the price is in dollars? The output should be `Electricity costs $3.14`. But in double-quoted strings, a dollar sign shows that a variable must be interpolated. To print the `$` character itself, you need to escape it:

```raku
say "$product costs \$$price";
```

Of course, you can also avoid escaping `$` with string concatenation:

```raku
say $product ~ ' costs $' ~ $price;
```

This version prints exactly the same string. But interpolation looks more natural and is easier to read. Note the single-quoted string `' costs $'`. In it, the `$` character is neither interpolated nor escaped. That is the main difference. Special characters in single quotes appear as they are.

In double-quoted strings, a few more characters have a special meaning:

`\$` | Dollar sign
`\n` | Newline
`\r` | Carriage return
`\t` | Horizontal tab
`\"` | Double quote
`\\` | Backslash

The type of quotes around a string decides how Raku treats special characters. Look at these two examples:

```raku
say 'One\nTwo';
say "Three\nFour";
```

If you run this program, the first string appears unchanged, on a single line. But the second string is split into two pieces:

    One\nTwo
    Three
    Four

In double quotes, Raku treats the special sequence `\n` as a newline character. In single quotes, it is just two ordinary characters: `\` and `n`.

There is an interesting exception for `'` and `\`. In single quotes, you can escape a single quote with a `\` before it:

```raku
say '\''; # '
```

If a single quote follows a backslash, you need to escape the backslash too:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
