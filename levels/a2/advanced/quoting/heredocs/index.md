---
title: Heredocs
---

{% include menu.html %}

A _heredoc_ is a quoting form for text with many lines. It has no delimiters around the text. Instead, you give a terminator word with `:to`. The terminator marks the end. The string starts on the next line. It goes on until a line with only that word:

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

The terminator marks the end of the text. Here, it is `END`, but you can use any word. Look at the `print`. The text keeps the newline before the terminator. So the text already ends with a line break. `say` adds a second one. Then you get an empty line at the end. This heredoc starts with `q:to`. So the text is not interpolated. To interpolate variables, use `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Here is a useful detail. Look at the **indentation of the closing terminator**. Raku removes it from every line of the text. So you can indent a heredoc like the code around it. The indentation does not get into the string:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

This prints the same `Hello,` and `World!` as the first example. Here, the closing `END` has eight spaces in front of it. So Raku removes eight spaces from each line. The function returns just `Hello,\nWorld!`. There are no spaces at the start.

The closing terminator decides how many spaces Raku removes. So each line of the text needs at least that many spaces. Maybe a line has fewer spaces. Then Raku cannot remove all of them. It warns: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Avoid this warning. Do not indent the terminator more than any line of the text. Heredocs are the natural choice for templates and messages. In fact, they are good for any text with several lines.

{% include nav.html %}
