---
title: Formatting and code
---

{% include menu.html %}

In Pod text, you mark words with _formatting codes_. Each code is one letter. After the letter, you put angle brackets around the text:

* `B<…>` — bold
* `I<…>` — italic
* `C<…>` — code (all letters have the same width)
* `L<…>` — a link

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

In the formatted text, `important` is bold. `say` is in a code font. You can put one code inside another code. In this way, you combine them. So `B<C<say>>` is bold code.

Sometimes you need a whole block of code. A short piece inside a line is not enough. Then use a code block: `=begin code … =end code`. It has a line at the start and a line at the end. It keeps the text exactly as it is:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

The lines in the code block appear exactly as you write them. Raku does not read them as Pod. So Pod has codes inside lines, and it has code blocks. With them, you can describe an API. An API is the way other programs use your code. You write formatted text and examples. The examples look like code that you can run. All of it stays next to the code that it describes.

{% include nav.html %}
