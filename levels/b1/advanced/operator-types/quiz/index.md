---
title: 'Quiz — Operator categories'
---

{% include menu.html %}

What category does the subscript `[0]` in the expression `@a[0]` belong to?

{:.quiz}
0 | postfix
1 | postcircumfix
0 | circumfix
0 | infix

{% include quiz.html %}

<div class="extended-explanation">

A subscript puts brackets around its content *and* comes after a term, here `@a`. That makes it a postcircumfix operator. A plain postfix like `++` has no brackets around anything. A circumfix, like the array constructor `[1, 2, 3]`, goes around something. But it does not come after a term.

</div>

{% include nav.html %}
