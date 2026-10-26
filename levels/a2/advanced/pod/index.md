---
title: Documenting code
---

{% include menu.html %}

Raku has its own way to write documentation. It is part of the language. Its name is _Pod_, or _Rakudoc_. You write the documentation right in your source file. For this, you use lines that start with `=`. These lines are called directives. The compiler can show the documentation as formatted text. It can also give it to your program.

This section shows the basic Pod directives. It also shows the formatting codes. With them, you mark words in the text. Last, it shows how to get the documentation. You can get it as formatted text with `raku --doc`. Or you can get it as data through the variable `$=pod`.

{% include nav.html %}
