---
title: The solution of ’Formatted text‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 You can find the source code in the file [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Output

Run it with `raku --doc`:

```
Greeting

Hello, world!
```

## Comments

1. `B<world>` makes the word bold. In plain text, it looks like normal text. But richer formats show it in bold.

1. `raku --doc` shows the Pod as text. It does not run any code of the program.

1. Do you want to really *see* the bold? Then turn the Pod into a format with styles. First, install a formatter module, for example, `Pod::To::HTML`. Use `zef install Pod::To::HTML` for this. Then run `raku --doc=HTML formatted-text.raku`. Now the word is inside an HTML `<b>` element. Plain text from `--doc` is different. It cannot show bold in a file or a pipe.

{% include nav.html %}
