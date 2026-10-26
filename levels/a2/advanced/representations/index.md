---
title: Turning values into text
---

{% include menu.html %}

Sometimes a program shows a value. You can `say` it, print it, or put it into a string. In all these cases, the value must become text. Raku does not have only one fixed way to do this. Instead, every value has a few standard methods. Each method makes a string for a different purpose:

* `.gist` — a form for people to read. `say` prints this form.
* `.Str` — the plain string form. Raku uses it when it needs a string.
* `.raku` — a form like code. It is useful when you debug a program.

All three are normal methods. Every value in Raku has them. So they work in the same way for any value. This can be a number, a string or an array. It can also be an object of your own. The next pages show each method, one by one. Then they help you choose the right one. [The section after that is about `dd`](/advanced/dd). This is a tool in Rakudo. It is built on `.raku`.

{% include nav.html %}
