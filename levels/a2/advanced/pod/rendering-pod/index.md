---
title: Rendering Pod
---

{% include menu.html %}

Your file may have Pod in it. Then the compiler can turn it into formatted text. It does not run the program for this. Use the option `--doc`:

```
raku --doc mymodule.raku
```

Take the earlier example with a heading and a paragraph. For it, the command prints something like this:

```
My Module

This module does something useful.
```

This also works with lists and code blocks. Look at this Pod:

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

With `raku --doc`, it prints this:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Each `=item` becomes a bullet point. The `=begin code … =end code` block moves a little to the right. Its text stays exactly as you wrote it.

## Turning Pod into HTML

In the same way, you can get other formats too. For HTML, install a formatter module. You do this only once. Then write its name after `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Now the same document comes out as HTML. The heading becomes an `<h1>`. The list becomes a `<ul>` with `<li>` items. The code block becomes a `<pre>`:

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

The tool also puts this into a full HTML page. The official Raku documentation at [docs.raku.org](https://docs.raku.org) is made in this way. It comes from Pod files.

{% include nav.html %}
