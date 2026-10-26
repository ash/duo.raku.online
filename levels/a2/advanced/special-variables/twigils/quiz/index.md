---
title: 'Quiz — Twigils'
---

{% include menu.html %}

Raku finds a **dynamic** variable through the call stack. Which twigil shows that a variable is dynamic?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

The twigil `*` shows a dynamic variable, as in `$*OUT` or `$*greeting`. The twigil `?` is for compile-time values. `!` is for a private attribute. And `.` is for the accessor of an attribute.

</div>

{% include nav.html %}
