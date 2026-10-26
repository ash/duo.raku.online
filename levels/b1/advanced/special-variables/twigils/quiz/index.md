---
title: 'Quiz — Twigils'
---

{% include menu.html %}

Which twigil marks a **dynamic** variable, which Raku finds through the call stack?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

The `*` twigil marks a dynamic variable, for example, `$*OUT` or `$*greeting`. The `?` twigil is for compile-time values, and `!` is for a private attribute. The `.` twigil is for the accessor of an attribute.

</div>

{% include nav.html %}
