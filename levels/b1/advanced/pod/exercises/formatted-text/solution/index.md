---
title: The solution of ’Formatted text‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 You can find the source code in the file [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Output

Run with `raku --doc`:

```
Greeting

Hello, world!
```

## Comments

1. `B<world>` marks the word as bold. When it is rendered as plain text, it looks like ordinary text. But richer formats show it in bold.

1. `raku --doc` renders the Pod but does not run any of the program code.

1. To really *see* the bold text, render the Pod to a format that has styles. Install a formatter, such as `Pod::To::HTML`, with `zef install Pod::To::HTML`. Then run `raku --doc=HTML formatted-text.raku`. Now the word comes out inside an HTML `<b>` element. Plain text output from `--doc` is different. It cannot show bold when it goes to a file or a pipe.

{% include nav.html %}
