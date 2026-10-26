---
title: Heredocs
---

{% include menu.html %}

A _heredoc_ is a quoting form for text with several lines. It does not use delimiters around the text. Instead, you give a terminator word with `:to`. The string starts on the next line. It goes on until a line that contains only that word:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

This prints:

```
Hello,
World!
```

The terminator marks where the text ends. Here it is `END`, but any word is fine. Note the `print`. The text keeps the newline before the terminator. So it already ends with a line break. With `say`, you would get a second one and an empty line at the end. The heredoc starts with `q:to`, so the text is not interpolated. To interpolate variables, use `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Here is a useful detail. The **indentation of the closing terminator** is removed from every line of the text. So you can indent a heredoc to match the code around it. That indentation does not end up in the string:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

This prints the same `Hello,` and `World!` as in the first example. Here, the closing `END` is indented by eight spaces. So eight spaces are removed from each line. The returned string is just `Hello,\nWorld!`, with no spaces at the start of the lines.

The closing terminator sets how many spaces are removed. So every line of the text must have at least that much indentation. If a line has fewer spaces at the start, Raku cannot remove the full amount. Then it warns: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. To avoid this, do not indent the terminator deeper than the least indented line. Heredocs are the natural choice for templates, messages, and any text with several lines.

{% include nav.html %}
