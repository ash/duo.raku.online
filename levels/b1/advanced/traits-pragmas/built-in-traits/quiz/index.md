---
title: 'Quiz — Traits'
---

{% include menu.html %}

Which trait allows a subroutine to **change the caller’s variable** through a parameter?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | none — parameters are writable by default

{% include quiz.html %}

<div class="extended-explanation">

A parameter is read-only by default, so you cannot assign to a plain parameter. `is rw` binds the parameter to the caller’s own variable. So a change inside the routine is also visible outside. `is copy` would instead give you a *copy* that you can change. The caller’s variable would stay untouched.

</div>

{% include nav.html %}
