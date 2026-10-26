---
title: Documenting code
---

{% include menu.html %}

Raku has a documentation markup that is built into the language. It is called _Pod_, or _Rakudoc_. You write documentation directly in your source file with `=` directives. The compiler can show it as formatted text. It can also make it available to your program.

This section covers the basic Pod directives and the formatting codes for marking up text. It also shows how to get the documentation. You get it as formatted text with `raku --doc`, or as data through the `$=pod` variable.

{% include nav.html %}
