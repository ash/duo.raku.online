---
title: 'Quiz — Traits'
---

{% include menu.html %}

A subroutine wants to **change the caller’s variable** through a parameter. Which trait makes this possible?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | none — parameters are writable by default

{% include quiz.html %}

<div class="extended-explanation">

Normally, a parameter is read-only. So you cannot assign a new value to a plain parameter. `is rw` connects the parameter to the caller’s own variable. So a change inside the routine is visible outside. `is copy` works in another way. It gives you a *copy* that you can change. The caller’s variable stays the same.

</div>

{% include nav.html %}
