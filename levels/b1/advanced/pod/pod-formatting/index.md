---
title: Formatting and code
---

{% include menu.html %}

Inside Pod text, you mark up words with _formatting codes_ of a single letter. You write the letter and then angle brackets around the text:

* `B<…>` — bold
* `I<…>` — italic
* `C<…>` — code (with all letters of the same width)
* `L<…>` — a link

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

After rendering, `important` is shown in bold and `say` in a code font. Codes can go inside each other and be combined, so `B<C<say>>` is bold code.

Sometimes you need a whole block of code, not just a piece inside a line. Then use a code block with clear start and end lines, `=begin code … =end code`. It keeps the text exactly as written:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

The lines inside the code block are shown exactly as written. They are not read as Pod. With inline codes and code blocks together, Pod can document an API. It can have formatted text and examples that look like real, working code. All this stays next to the code that it describes.

{% include nav.html %}
