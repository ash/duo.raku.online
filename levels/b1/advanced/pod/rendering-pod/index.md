---
title: Rendering Pod
---

{% include menu.html %}

When a file contains Pod, the compiler can turn it into formatted text. It does not need to run the program. For this, use the `--doc` option:

```
raku --doc mymodule.raku
```

For the earlier example with a heading and a paragraph, this prints something like:

```
My Module

This module does something useful.
```

Lists and code blocks can be rendered too. Take this Pod as an example:

```raku
=begin pod

=head1 Shopping list

Things to buy:

=item Apples
=item Bread
=item Cheese

Run it like this:

=begin code
say 'hello';
=end code

=end pod
```

When you render it with `raku --doc`, it prints:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Each `=item` becomes a bullet point. The `=begin code … =end code` block is indented and shown exactly as it was written.

## Rendering to HTML

This can produce other formats as well. For HTML, you install a formatter module once and then give its name after `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Now exactly the same document comes out as HTML. The heading becomes an `<h1>`, and the list becomes a `<ul>` of `<li>` items. The code block becomes a `<pre>`:

```html
<h1>Shopping list</h1>
<p>Things to buy:</p>
<ul>
  <li>Apples</li>
  <li>Bread</li>
  <li>Cheese</li>
</ul>
<p>Run it like this:</p>
<pre class="pod-block-code">say 'hello';</pre>
```

The tool puts this into a complete HTML page. The official Raku documentation at [docs.raku.org](https://docs.raku.org) is made like this. It comes from Pod source files.

{% include nav.html %}
