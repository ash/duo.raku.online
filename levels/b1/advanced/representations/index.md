---
title: Turning values into text
---

{% include menu.html %}

When a program shows a value, it has to turn this value into text. This happens when you `say` the value, print it, or put it into a string. Raku does not have just one fixed way to do this. Instead, every value has a few standard methods. Each of them makes a string for a different purpose:

* `.gist` — a form that is easy for people to read. This is what `say` prints.
* `.Str` — the plain string form, for places where Raku needs a string.
* `.raku` — a code-like form, which is useful when you debug.

All three are ordinary methods that every value in Raku has. So they work the same way on numbers, strings, arrays, and your own objects. The next pages look at each method one by one. Then they help you choose the right one. [The section after that introduces `dd`](/advanced/dd), a Rakudo tool that is built on `.raku`.

{% include nav.html %}
